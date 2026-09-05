import { NextResponse, type NextRequest } from "next/server";
import { listStoriesWithQuestions } from "@/lib/queries/stories";
import type { LevelCode } from "@/types/database";

const VALID_LEVELS: LevelCode[] = ["A1", "A2", "B1", "B2", "C1", "C2"];

/**
 * GET /api/stories?level=A1
 * Endpoint public en lecture seule, pour un futur client externe — les
 * pages de l'app lisent directement listStoriesForLibrary côté serveur.
 */
export async function GET(request: NextRequest) {
  const rawLevel = request.nextUrl.searchParams.get("level");

  if (rawLevel && !VALID_LEVELS.includes(rawLevel as LevelCode)) {
    return NextResponse.json(
      { error: `level invalide : attendu ${VALID_LEVELS.join("/")}` },
      { status: 400 },
    );
  }

  const stories = await listStoriesWithQuestions(rawLevel as LevelCode | null);
  return NextResponse.json({ stories });
}
