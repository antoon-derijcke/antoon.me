# Agent Instructions

This document provides context and instructions for AI agents working on this repository.

## Architecture
- Framework: [Astro](https://astro.build)
- Styling: [Tailwind CSS](https://tailwindcss.com)
- Linter/Formatter: [Biome](https://biomejs.dev)
- Package Manager: `pnpm` (v10+)

## Scripts and Workflow

- **Install dependencies:** `pnpm install`
- **Run local development server:** `pnpm run dev`
- **Build the project:** `pnpm run build`
- **Preview the build:** `pnpm run preview`
- **Run typechecks and formatting:** `pnpm run check` (Runs `astro check` and `biome check`)

## Guidelines
- Always use `pnpm` instead of `npm` or `yarn`.
- Ensure changes are linted properly using Biome by running `pnpm run check` before concluding tasks.
- Keep components modular and localized where possible in `src/components`.
- Layouts are situated in `src/layouts`.
- The main pages exist in `src/pages`. Note that while `index.astro` and `about.astro` are live, `posts.astro` and `projects.astro` are a Work in Progress.
- Cloudflare Pages auto-deploys upon pushing to main. No manual deployment commands are necessary.