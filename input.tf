variable "region" {
  description = "Please specify the aws_region before you run "
  type        = string
  default    = "ap-south-1"



}

variable "key_pair" {

  description = "Please configure a key"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDohAgdWOunDZ4R5bQuUKikupJxbVyruplf/EFh3ApisXQ/13pv0+S+y1o9iJiQTcmpsyeKLE3rhMNz8M4vfg+BY07YWNCICEAPVIxEkzhM4jV1OdQzPDLVX84rP6SMCAc3Z6zsGWTJ31Hbz0fdOzycOLiA0j/Z9Nb/1dC1d72L4oJFwXkf9cMuaPlteEfwXzJ+rZZhUtgZYga0qbmKF/PKT6KteGdzzmg4AmSpQlxauxOxYys5kXCAwhBwOdyEfoQ/WjJL1sZ+1T+N6XO4u2DnV/+qF2vpxJCP56X7wmI7yCS/xO4NrELC6ntJ1mhYhwyKwL9mEkSp4TxPpBcp8Gg9dovtxLvEDTsVPq/ZzWPsiu0kocQ4k0+CSFsCDOWt37YLkp/7EFniDDMHuVm0c2643Pz8YujxvRRNtkZf/3cJ6xviohzmuIwJ1FfymKxGG2LMqPffGmExipLCBTrXUzvOp0ImPLRVAQNGW1NuKvHUCV+NKMnyK1NJZMst5J5M/68= prasad@DESKTOP-9RPQJ5L"
}

variable "ami_info" {
  description = "Please provide the ami information"
  type        = string
  default     = "ami-0d2986f2e8c0f7d01"

}

variable "server_tag_Name" {
  description = "Please specify the server tag name"
  type        = string
  default     = "newapp"

}


variable "instance_size" {
  description = " Please specify the size of the machine"
  type        = string
  default  =  "t2.micro"

}
