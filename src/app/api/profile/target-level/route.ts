import { NextResponse } from "next/server";
import { setTargetLevel } from "@/lib/queries/profile";
import { parseJsonBody } from "@/lib/parse-json-body";
import type { LevelCode } from "@/types/database";

const VALID_LEVELS: LevelCode[] = ["A1", "A2", "B1", "B2", "C1", "C2"];

interface TargetLevelRequestBody {
  level?: string;
}

/**
 * POST /api/profile/target-level  { level }
 *
 * Utilisé par le test de positionnement pour enregistrer le niveau
 * recommandé. Comme /api/vocabulary, répond 200 avec `saved: false` si
 * l'utilisateur n'est pas connecté ou si Supabase n'est pas configuré —
 * le bouton "Enregistrer" reste cliquable en mode démo, sans persister.
 */
export async function POST(request: Request) {
  const body = await parseJsonBody<TargetLevelRequestBody>(request);

  if (!body || !body.level || !VALID_LEVELS.includes(body.level as LevelCode)) {
    return NextResponse.json({ error: "level invalide" }, { status: 400 });
  }

  const result = await setTargetLevel(body.level as LevelCode);
  return NextResponse.json(result);
}
