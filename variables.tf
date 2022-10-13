variable "app_name" {
  type = string
}

variable "region" {
  type    = string
  default = "us-west-2"
}

variable "owner" {
  type    = string
  default = "Project owner name"
}

variable "environment" {
  type    = string
  default = "POV_Project-name"
}

variable "db_name" {
  type    = string
  default = "postgress_app"
}

variable "db_username" {
  type    = string
  default = "pg_user_app"
}

variable "instance_size" {
  type    = string
  default = "db.t2.micro"

  validation {
    condition     = contains(["db.t2.micro", "db.t3.micro"], var.instance_size)
    error_message = "Approved instance sizes are: db.t2.micro, db.t3.micro."
  }
}
