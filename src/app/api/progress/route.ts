import { NextResponse } from "next/server";
import { saveProgress } from "@/lib/queries/progress";
import { parseJsonBody } from "@/lib/parse-json-body";
import type { ProgressStatus } from "@/types/database";

interface ProgressRequestBody {
  storyId: string;
  status: ProgressStatus;
  score?: number;
}

/**
 * POST /api/progress  { storyId, status, score? }
 *
 * Sans session (invité) ou sans Supabase configuré, répond quand même
 * 200 avec `saved: false` : l'écran de résultats doit rester utilisable,
 * seule la persistance est sautée (voir saveProgress).
 */
export async function POST(request: Request) {
  const body = await parseJsonBody<Partial<ProgressRequestBody>>(request);

  if (!body) {
    return NextResponse.json({ error: "Corps JSON invalide" }, { status: 400 });
  }

  if (!body.storyId || !body.status) {
    return NextResponse.json(
      { error: "storyId et status sont requis" },
      { status: 400 },
    );
  }

  const result = await saveProgress(body.storyId, body.status, body.score);
  return NextResponse.json(result);
}
