
export MLFLOW_S3_ENDPOINT_URL=https://storage.yandexcloud.net
export AWS_ACCESS_KEY_ID=YCAJE8CKXGh8XKUmcmGHpV2CX
export AWS_BUCKET_NAME=s3-student-mle-20240620-7af3548300
export DB_DESTINATION_USER=mle_20240620_7af3548300
export DB_DESTINATION_HOST=rc1b-uh7kdmcx67eomesf.mdb.yandexcloud.net
export DB_DESTINATION_PASSWORD=bac9e597d2fc43bea26785ec829ddd14
export DB_DESTINATION_PORT=6432
export DB_DESTINATION_NAME=playground_mle_20240620_7af3548300

mlflow server \
  --backend-store-uri postgresql://$DB_DESTINATION_USER:$DB_DESTINATION_PASSWORD@$DB_DESTINATION_HOST:$DB_DESTINATION_PORT/$DB_DESTINATION_NAME\
    --default-artifact-root s3://$AWS_BUCKET_NAME \
    --no-serve-artifacts