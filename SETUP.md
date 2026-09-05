# Brancher un vrai projet Supabase

Sans ce qui suit, l'app tourne déjà, mais uniquement en mode démo (une seule
histoire factice, rien n'est sauvegardé — voir `src/lib/supabase/is-configured.ts`).
Ces étapes activent le vrai contenu (30 histoires) et la progression persistée.

## 1. Créer le projet

1. Va sur [supabase.com](https://supabase.com) et crée un compte si besoin.
2. Crée un nouveau projet (choisis une région proche de tes utilisateurs).
3. Attends la fin du provisionnement (1 à 2 minutes).

## 2. Récupérer les clés API

Dans le dashboard du projet : **Project Settings → API**.

Copie `.env.example` vers `.env.local` et remplis :

```
NEXT_PUBLIC_SUPABASE_URL=          # "Project URL"
NEXT_PUBLIC_SUPABASE_ANON_KEY=     # "anon public" key
SUPABASE_SERVICE_ROLE_KEY=         # "service_role" key — ne jamais exposer côté client
```

## 3. Exécuter les migrations

Le dossier `supabase/migrations/` contient, dans l'ordre :

- `0001_init.sql` — les 6 tables + Row Level Security
- `0003` à `0008_content_*.sql` — les 30 histoires (5 par niveau), déjà testées

Deux façons de les exécuter :

**Option A — SQL Editor du dashboard** (le plus simple, sans rien installer) :
ouvre chaque fichier dans l'ordre et colle son contenu dans
**SQL Editor → New query**, puis lance-le. Répète pour chaque fichier.

**Option B — Supabase CLI**, si tu préfères tout scripter :

```bash
npm install -g supabase
supabase login
supabase link --project-ref <ton-project-ref>   # trouvable dans l'URL du dashboard
supabase db push
```

## 4. Activer les magic links (authentification)

Dans **Authentication → URL Configuration**, ajoute l'URL de callback de l'app
à la liste des redirections autorisées :

```
http://localhost:3000/auth/callback        (développement)
https://ton-domaine.com/auth/callback      (production, une fois déployée)
```

Sans ça, les liens magiques envoyés par `/connexion` échoueront silencieusement.

## 5. Vérifier

```bash
npm install
npm run dev
```

Ouvre `http://localhost:3000` : la bibliothèque doit maintenant afficher les
30 histoires réelles (et non plus la seule histoire de démo), et le bandeau
« mode démo » du header doit avoir disparu.

## Déploiement

L'app est un projet Next.js standard — elle se déploie sans configuration
particulière sur Vercel (ou tout hébergeur Next.js). Pense simplement à
renseigner les 3 variables d'environnement ci-dessus dans les réglages du
projet déployé, et à ajouter son URL de production à la liste des
redirections Supabase (étape 4).
