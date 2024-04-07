# vpc variables
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
  description   = "vpc cidr block"
  type          = string
}

# public subnet az1 variables
variable "public_subnet_az1_cidr" {
  default       = "10.0.0.0/24"
  description   = "public subnet az1 cidr block"
  type          = string
}

# public subnet az1 variables
variable "public_subnet_az2_cidr" {
  default       = "10.0.1.0/24"
  description   = "public subnet az2 cidr block"
  type          = string
}

# private app subnet az1 variables
variable "private_app_subnet_az1_cidr" {
  default       = "10.0.2.0/24"
  description   = "private app subnet az1 cidr block"
  type          = string
}

# private app subnet az2 variables
variable "private_app_subnet_az2_cidr" {
  default       = "10.0.3.0/24"
  description   = "private app subnet az2 cidr block"
  type          = string
}

# private data subnet az1 variables
variable "private_data_subnet_az1_cidr" {
  default       = "10.0.4.0/24"
  description   = "private data subnet az1 cidr block"
  type          = string
}

# private data subnet az2 variables
variable "private_data_subnet_az2_cidr" {
  default       = "10.0.5.0/24"
  description   = "private data subnet az2 cidr block"
  type          = string
}

# security group variable
variable "ssh_location" {
  default       = "185.111.175.183" # the bastion host ip address is placed here
  description   = "the ip address that can ssh into the ec2 instances"
  type          = string
}

# rds variables
variable "database_snapshot_identifier" {
  default       = "arn:aws:rds:us-east-2:736741838258:snapshot:myrds-snapshot"
  description   = "the database snapshot arn"
  type          = string
}

variable "database_instance_class" {
  default       = "db.t3.micro"
  description   = "the database instance type"
  type          = string
}

variable "database_instance_identifier" {
  default       = "myrds"
  description   = "the database instance identifier"
  type          = string
}

variable "multi_az_deployment" {
  default       = "false"
  description   = "create a standby db instance"
  type          = bool
}

# application load balancer variables
variable "ssl_certificate_arn" {
  default       = "arn:aws:acm:us-west-1:402569601192:certificate/336db6c0-fbf1-4005-befe-b16a5d40bacd"
  description   = "ssl certficate arn"
  type          = string
}

# sns topic variable
variable "operator_email" {
  default       = "claude.eke77@gmail.com"
  description   = "a valid email address"
  type          = string
}

# auto scaling group variables
variable "launch_template_name" {
  default       = "dev-launch-template"
  description   = "name of the launch template"
  type          = string
}

variable "ec2_image_id" {
  default       = "ami-08effc512d87a17c3"
  description   = "id of the ami"
  type          = string
}

variable "ec2_instance_type" {
  default       = "t2.micro"
  description   = "ec2 instance type"
  type          = string
}

variable "ec2_key_pair_name" {
  default       = "claudekey33"
  description   = "name of the ec2 key pair"
  type          = string
}

# route 53 variables
variable "domain_name" {
  default       = "contriciavet.com"
  description   = "domain name"
  type          = string
}

variable "record_name" {
  default       = "www"
  description   = "sub domain name"
  type          = string
}
