variable "ami_id" {
    type = string
    description = "variable for AMI ID"
    default = "ami-0f3164307ee5d695a"
}

variable "instance_type" {
    type = string
    description = "variable for instance type"
    default = "t2.micro"
}

variable "instance_name" {
    type = string
    description = "variable for the instance name"
    default = "Data2bot"
}