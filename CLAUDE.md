# Easter Egg Hunt

## Deployment

Deploy to production using the deploy script:

```bash
./deploy.sh
```

This syncs files to S3 bucket `easteregghunt.awsmat.com` and invalidates the CloudFront distribution (`E13P3GDHKRT1NN`). The site updates in ~1-2 minutes.

**Production URL:** https://easteregghunt.awsmat.com/

## Architecture

- Single-page app: everything is in `index.html` (HTML, CSS, JS)
- Hosted on AWS S3 static hosting behind CloudFront CDN
- Domain: `easteregghunt.awsmat.com`
- Git repo: `github.com/plattze/easteregghunt`

## Game Structure

- **Game 1 (Easter Hunt):** 27 steps — 20 clues with numeric codes, 5 quizzes, 1 sudoku, 1 crossword. Final answer is "HYUNDAI".
- **Game 2 (Scary Night):** 11 steps — 10 clues with numeric codes + 1 jumpscare after clue 5. Game 2 unlocks after completing Game 1.
