terraform {
}

module "module"{
  source = "./modules"  
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}
