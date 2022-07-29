#!/bin/sh

set -e

cd backend_api

dart_frog build

exec gcloud run deploy api \
  --source build \
  --project=daohoangson-io-extended-2022 \
  --region=asia-southeast1 \
  --allow-unauthenticated
