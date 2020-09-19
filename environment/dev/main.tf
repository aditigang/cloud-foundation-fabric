module "eu-buckets" {
  source     = "./../../modules/gcs"
  project_id = "rashi-playground-2"
  prefix     = "test"
  names      = ["bucket-one", "bucket-two"]
  location   = "eu" 
}

module "us-buckets" {
  source     = "./../../modules/gcs"
  project_id = "rashi-playground-2"
  prefix     = "test-2"
  names      = ["bucket-three", "bucket-four"]
  location   = "us"
}
module "us-buckets-regional" {
  source     = "./../../modules/gcs"
  project_id = "rashi-playground-2"
  prefix     = "test-2"
  names      = ["bucket-five", "bucket-six"]
  location   = "eu"
  
  storage_class = "REGIONAL" 
}
