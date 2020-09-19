module "eu-buckets" {
  source     = "./../../modules/gcs"
  project_id = "rashi-playground-2"
  prefix     = "test"
  names      = ["bucket-one", "bucket-two"]
  location   = "us" 
  iam_members = {
    bucket-two = {
      "roles/storage.admin" = ["group:storage@example.com"]
    }
  }
  iam_roles = {
    bucket-two = ["roles/storage.admin"]
  }
}

module "us-buckets" {
  source     = "./../../modules/gcs"
  project_id = "rashi-playground-2"
  prefix     = "test-2"
  names      = ["bucket-three", "bucket-four"]
  location   = "eu"
  iam_members = {
    bucket-four = {
      "roles/storage.admin" = ["group:storage@example.com"]
    }
  }
  iam_roles = {
    bucket-four = ["roles/storage.admin"]
  }
}
