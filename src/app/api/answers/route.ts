import { NextResponse } from "next/server";
import { recordAnswer } from "@/lib/queries/answers";
import { parseJsonBody } from "@/lib/parse-json-body";

interface AnswerRequestBody {
  questionId: string;
  choiceId: string;
}

/**
 * POST /api/answers  { questionId, choiceId }
 * → { correct: boolean, correctChoiceId: string }
 *
 * La correction se fait entièrement dans recordAnswer() côté serveur
 * (client admin service_role) : le client n'a jamais accès à
 * `choices.is_correct` avant d'avoir répondu.
 */
export async function POST(request: Request) {
  const body = await parseJsonBody<Partial<AnswerRequestBody>>(request);

  if (!body || !body.questionId || !body.choiceId) {
    return NextResponse.json(
      { error: "questionId et choiceId sont requis" },
      { status: 400 },
    );
  }

  const verdict = await recordAnswer(body.questionId, body.choiceId);

  if (!verdict) {
    return NextResponse.json({ error: "Question inconnue" }, { status: 404 });
  }

  return NextResponse.json(verdict);
}
