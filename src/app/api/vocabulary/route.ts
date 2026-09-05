import { NextResponse } from "next/server";
import { addVocabularyWord } from "@/lib/queries/vocabulary";
import { parseJsonBody } from "@/lib/parse-json-body";

interface VocabularyRequestBody {
  word: string;
  translation: string;
  storyId?: string | null;
}

/**
 * POST /api/vocabulary  { word, translation, storyId? }
 *
 * Sans session (invité) ou sans Supabase configuré, répond quand même 200
 * avec `saved: false` — le bouton "+" reste cliquable, seule la
 * persistance est sautée (voir addVocabularyWord).
 */
export async function POST(request: Request) {
  const body = await parseJsonBody<Partial<VocabularyRequestBody>>(request);

  if (!body) {
    return NextResponse.json({ error: "Corps JSON invalide" }, { status: 400 });
  }

  if (!body.word || !body.translation) {
    return NextResponse.json(
      { error: "word et translation sont requis" },
      { status: 400 },
    );
  }

  const result = await addVocabularyWord(
    body.word,
    body.translation,
    body.storyId ?? null,
  );
  return NextResponse.json(result);
}
