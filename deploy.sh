#!/bin/bash
# Deploy Easter Egg Hunt to S3 + invalidate CloudFront cache
set -e

BUCKET="easteregghunt.awsmat.com"
DISTRIBUTION_ID="E13P3GDHKRT1NN"

echo "Deploying to s3://${BUCKET}..."
aws s3 sync . "s3://${BUCKET}/" \
  --exclude ".git/*" \
  --exclude ".gitignore" \
  --exclude "README.md" \
  --exclude "deploy.sh"

echo "Invalidating CloudFront cache..."
aws cloudfront create-invalidation \
  --distribution-id "${DISTRIBUTION_ID}" \
  --paths "/*" \
  --output text

echo "Done! Site will update in ~1-2 minutes."
