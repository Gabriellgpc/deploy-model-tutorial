# Pushing Local Image To Container Registry 
export SERVICE_NAME="randpredict"
export PROJECT_ID="deploy-tutorial-355900"

# build and push to gcp container registry
gcloud builds submit --tag gcr.io/$PROJECT_ID/$SERVICE_NAME

# deploy as gcloud cloud run
gcloud run deploy --image gcr.io/$PROJECT_ID/$SERVICE_NAME --platform managed --port 8080