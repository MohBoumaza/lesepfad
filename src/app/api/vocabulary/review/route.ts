import { NextResponse } from "next/server";
import { reviewVocabularyWord } from "@/lib/queries/vocabulary";
import { parseJsonBody } from "@/lib/parse-json-body";

interface ReviewRequestBody {
  id: string;
  remembered: boolean;
}

/**
 * POST /api/vocabulary/review  { id, remembered }
 *
 * Enregistre le résultat d'une flashcard et replanifie la prochaine
 * révision (méthode Leitner — voir reviewVocabularyWord).
 */
export async function POST(request: Request) {
  const body = await parseJsonBody<Partial<ReviewRequestBody>>(request);

  if (!body) {
    return NextResponse.json({ error: "Corps JSON invalide" }, { status: 400 });
  }

  if (!body.id || typeof body.remembered !== "boolean") {
    return NextResponse.json(
      { error: "id et remembered (booléen) sont requis" },
      { status: 400 },
    );
  }

  const updated = await reviewVocabularyWord(body.id, body.remembered);

  if (!updated) {
    return NextResponse.json({ error: "Mot introuvable" }, { status: 404 });
  }

  return NextResponse.json(updated);
}
