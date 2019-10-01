terraform {
  required_version = ">= 0.12"
}

#
# Configure the MongoDB Atlas Provider
#
provider "mongodbatlas" { 
 }

#
# Create a Project 
#
resource "mongodbatlas_project" "my_project" {
  name 			= "MICROSERVCSTalk"
  org_id		= "${var.mongodb_atlas_org_id}"
}

#
# Create a Cluster in 2 Regions
#
resource "mongodbatlas_cluster" "cluster" {
  name                  	= "DemoClusterCreation"
  project_id            	= "${mongodbatlas_project.my_project.id}"
  backup_enabled		= false
  auto_scaling_disk_gb_enabled	= false
  mongo_db_major_version 	= "4.0"
  cluster_type   		= "REPLICASET"

  provider_name         	= "AWS"
  disk_size_gb			= 100
  provider_disk_iops		= 300
  provider_instance_size_name   = "M30"
  provider_backup_enabled 	= true

  replication_specs {
    num_shards	    		= 1
    regions_config {
      region_name     		= "US_WEST_1"
      priority        		= 7
      read_only_nodes 		= 0 
      analytics_nodes 		= 1
      electable_nodes 		= 3
    }
    regions_config {
    region_name       		= "US_EAST_1"
    priority        		= 6
    read_only_nodes 		= 1
    analytics_nodes 		= 0
    electable_nodes 		= 2 
    }
  }
}

#
# Create a Database User
#
resource "mongodbatlas_database_user" "test" {
  username 		= "${var.database_username}"
  password 	 	= "${var.database_user_password}"
  project_id            = "${mongodbatlas_project.my_project.id}"
  database_name	 	= "admin"

  roles {
    role_name     	= "readWriteAnyDatabase"
    database_name 	= "admin"
  }
}

#
# Create an IP Whitelist
#
resource "mongodbatlas_project_ip_whitelist" "test" {
  project_id            = "${mongodbatlas_project.my_project.id}"  
  whitelist {  
    ip_address 		= "${var.mongodb_atlas_whitelistip}"
    comment    		= "Added with Terraform"
  }
}