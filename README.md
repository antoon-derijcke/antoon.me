# antoon.me

Source of [antoon.me](https://www.antoon.me), the personal website of Antoon Derijcke, built in Swift with [Ignite](https://github.com/twostraws/Ignite).

## Stack

- **Swift 6 + Ignite**: the site is a Swift executable that renders static HTML into `Build/`.
- **Cloudflare Pages**: hosting, deployed by GitHub Actions ([deploy.yml](.github/workflows/deploy.yml)).
  Every pull request gets its own preview URL; merges to `main` go to production.

## Structure

```
Sources/
├── Site.swift      # Site configuration and entry point
├── Pages/          # Home and About
├── Layouts/        # Shared page layout, incl. JSON-LD Person schema
├── Components/     # Reusable views (experience item, footer, link helpers)
├── Models/         # Content: work experience and external links
└── Themes/         # Light and dark colour themes
Assets/             # Static files copied as-is (images, Cloudflare _headers/_redirects)
```

## Run locally

Requires macOS 14+ and Swift 6.

```bash
swift run                   # builds the site into Build/
python3 -m http.server -d Build 8000   # preview at http://localhost:8000
```

## License

Code is MIT licensed. Written content and images are © Antoon Derijcke, all rights reserved. See [LICENSE](LICENSE).
