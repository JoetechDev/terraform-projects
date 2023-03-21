variable "region" {

  description = "Region of Cloud Resources "
  type        = map(string)
  default = {
    "1" = "us-east-1"
    "2" = "us-east-2"
  }
}
variable "versioning" {
  description = "Activating ACL"
  type = bool
  default = true
}
variable "Department" {
description = "Department of Resource"
type = string
default = "Finanace"
}
variable "acl" {
  description = "Public or Private ACL"
  type = string
  default = "Private"
}