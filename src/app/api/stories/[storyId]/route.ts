import { NextResponse } from "next/server";
import { getStoryForReading } from "@/lib/queries/stories";

export async function GET(
  _request: Request,
  { params }: RouteContext<"/api/stories/[storyId]">,
) {
  const { storyId } = await params;
  const story = await getStoryForReading(storyId);

  if (!story) {
    return NextResponse.json({ error: "Histoire introuvable" }, { status: 404 });
  }

  return NextResponse.json({ story });
}
