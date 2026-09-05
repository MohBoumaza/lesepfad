/**
 * Parse le corps JSON d'une requête sans jamais lever d'exception non
 * gérée : un corps absent/malformé retourne `null` plutôt que de faire
 * planter le handler (avant ce correctif, `request.json()` non protégé
 * remontait une exception transformée en 500 générique par Next au lieu
 * de la 400 de validation que chaque route est censée renvoyer).
 */
export async function parseJsonBody<T>(request: Request): Promise<T | null> {
  try {
    return (await request.json()) as T;
  } catch {
    return null;
  }
}
