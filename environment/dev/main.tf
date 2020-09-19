module "buckets" {
  source     = "./modules/gcs"
  project_id = "rashi-playground-2"
  prefix     = "test"
  names      = ["bucket-one", "bucket-two"]
  location   = "us"
  bucket_policy_only = {
    bucket-one = false
  }
  iam_members = {
    bucket-two = {
      "roles/storage.admin" = ["group:storage@example.com"]
    }
  }
  iam_roles = {
    bucket-two = ["roles/storage.admin"]
  }
}

module "buckets" {
  source     = "./modules/gcs"
  project_id = "rashi-playground-2"
  prefix     = "test-2"
  names      = ["bucket-three", "bucket-four"]
  location   = "eu"
  bucket_policy_only = {
    bucket-three = false
  }
  iam_members = {
    bucket-four = {
      "roles/storage.admin" = ["group:storage@example.com"]
    }
  }
  iam_roles = {
    bucket-four = ["roles/storage.admin"]
  }
  retention_policy = {
     bucket-three = { retention_period = 100 , is_locked = true}
  }
}
