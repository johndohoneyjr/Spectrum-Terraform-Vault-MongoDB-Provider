#
# variables.tf 
#

variable "mongodb_atlas_api_pub_key" {
  default = "<Mongo Atlas API Key - Public Key>"
}

variable "mongodb_atlas_api_pri_key" {
  default = "<Mongo Atlas API Key - Private Key>"
}

variable "database_username" {
  default = "myadmin"
}

variable "database_user_password" {
  default = "S3cr3tP@ssw0rd"
}

variable "mongodb_atlas_whitelistip" {
  default = "<ipv4 from whatismyip.com >"
}

variable "mongodb_atlas_org_id" {
  default = "<Mongo DB Org ID >""
}

variable "mongodb_atlas_project_id" {
  default = "< Mongo DB Project ID >"
}

