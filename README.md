# West Palm Beach Firefighters (IAFF Local 727)

Public-facing site redesign preview for [wpbfirefighters.com](https://wpbfirefighters.com).

**Draft / redesign in progress.** Do not treat this repo as the live production site until Local 727 confirms go-live.

## Stack

Static HTML/CSS (Bold Community direction) served with nginx via Docker.

- `index.html` — homepage
- `fire-assessment.html` — Fire Assessment Fee splash + public-record timeline
- `styles.css` — shared styles
- `assets/` — branding and photos from the current live site
- `Dockerfile` + `nginx.conf` — container for Cloud Build / Cloud Run / similar

## Local preview (no Docker)

```bash
python3 -m http.server 8080
```

Open http://127.0.0.1:8080/

## Local Docker

```bash
docker build -t wpbfirefighters .
docker run --rm -p 8080:8080 wpbfirefighters
```

## Notes

- Informational site only (no store).
- Content substance preserved from Local 727; light copy polish only.
- Do not publish to the live domain without Ryan Stacey / Local 727 confirmation.
