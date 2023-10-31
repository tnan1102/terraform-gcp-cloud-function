# Storage Bucket
resource "google_storage_bucket" "bucket" {
  name          = var.bucket_vars["name"]
  location      = var.bucket_vars["location"]
  storage_class = var.bucket_vars["storage_class"]
}

# Pub/Sub topic
#resource "google_pubsub_topic" "topic" {
#  name = var.hello_world["topic_vars"]["name"]
#}

# Cloud Fanctions
#data "archive_file" "function_src" {
#  type        = "zip"
#  source_dir  = "./src/${var.hello_world["function_vars"]["name"]}"
#  output_path = "./src/${var.hello_world["function_vars"]["name"]}.zip"
#}

#resource "google_storage_bucket_object" "object" {
#  name   = "src/${var.hello_world["function_vars"]["name"]}.zip"
#  bucket = google_storage_bucket.bucket.name
#  source = data.archive_file.function_src.output_path
#}

#resource "google_cloudfunctions_function" "function" {
#  name        = var.hello_world["function_vars"]["name"]
#  description = var.hello_world["function_vars"]["description"]
#  runtime     = var.hello_world["function_vars"]["runtime"]
#
# available_memory_mb   = var.hello_world["function_vars"]["available_memory_mb"]
#  source_archive_bucket = google_storage_bucket.bucket.name
#  source_archive_object = google_storage_bucket_object.object.name
#
#  timeout               = var.hello_world["function_vars"]["timeout"]
#  entry_point           = var.hello_world["function_vars"]["entry_point"]
#  service_account_email = var.hello_world["function_vars"]["service_account_email"]

#  event_trigger {
#    event_type = "google.pubsub.topic.publish"
#    resource   = google_pubsub_topic.topic.name
#  }
#}

#resource "google_cloudfunctions_function_iam_member" "invoker" {
#  project        = google_cloudfunctions_function.function.project
#  region         = google_cloudfunctions_function.function.region
#  cloud_function = google_cloudfunctions_function.function.name

#  role   = "roles/iam.serviceAccountUser"
#  member = "serviceAccount:${var.hello_world["function_vars"]["name"]}"
#}

# Cloud Scheduler
#resource "google_cloud_scheduler_job" "schedule" {
#  name        = var.hello_world["scheduler_vars"]["name"]
#  description = var.hello_world["scheduler_vars"]["description"]
#
#  schedule    = var.hello_world["scheduler_vars"]["schedule"]
#  time_zone   = var.hello_world["scheduler_vars"]["time_zone"]
#
#  pubsub_target {
#    topic_name = google_pubsub_topic.topic.id
#    data       = var.hello_world["scheduler_vars"]["data"]
#  }
#
#  retry_config {
#    retry_count = var.hello_world["scheduler_vars"]["retry_count"]
#  }
#}