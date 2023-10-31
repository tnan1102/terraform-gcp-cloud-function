terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.16.0"
    }
  }
}

provider "google" {
  credentials = "${file("/c/key/.gcp/test-account.json")}"
  project = "My First Project"
  region  = "asia-northeast1"
}