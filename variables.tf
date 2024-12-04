variable "region" {
        description = "The AWS region where my resources will be created"
        type        = string
        default     = "ap-southeast-1"
}

variable "access_key" {
        description = "access_key"
        type        = string
      
}

variable "secret_key" {
        description = "Secret access key"
        type        = string
        

}

variable "instance_type" {
  description = "Type of Ec2 instance"
  type        = string
  default     = "t2.micro"
}

variable "key_pair" {
  description = "key pair for instance"
  type        = string
  default     = "abc"
}

variable "ami_id" {
  description = "ami id for workspace instances"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
}


