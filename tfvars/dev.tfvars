# Storage Bucket
bucket_vars = {
  name          = "nambara-cf-src"
  location      = "ASIA-NORTHEAST1"
  storage_class = "STANDARD"
}

#hello_world = {
#  # Pub/Sub topic
#  topic_vars = {
#    name = "hello-world-topic"
#  }
#  # Cloud Fanctions
#  function_vars = {
#    name                  = "hello-world-function"
#    description           = "test"
#    runtime               = "python311"
#    available_memory_mb   = 256
#    timeout               = 60
#    entry_point           = "main"
#    service_account_email = "invoke-cloudfunction@rls-hpb-dev-ops.iam.gserviceaccount.com"
#  }
#  # Cloud Scheduler
#  scheduler_vars = {
#    name        = "hello-world-scheduler"
#    description = "Trigger Pub/Sub every 10 minutes"
#    schedule    = "*/10 * * * *"
#    time_zone   = "JST"
#    data        = "test"
#    retry_count = 2
#  }
#}