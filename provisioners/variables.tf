variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of joindevops"
}

variable "instance_type" {
    default = "t2.micro"  
}

variable "ec2_tags" {
    type = map(string)
    default = {
      Name = "HelloTerraform"
      purpose = "variables-demo"
    }
}

variable "sg_name" {
    default = "allow-all"  
}

variable "sg_description" {
    default = "Allowing all ports from internet"  
}

variable "from_port" {
    default = 0  
}

variable "to_port" {
    type = number
    default = 0  
}

variable "cidr_blocks" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
}

variable "sg_tags" {
    default = {
        Name = "allow-all"
    }
}



#Preference of the terraform variables is
# 1.command line "ex: terraform plan -var "sg_name=cmd-allow-all" "
# 2.tfvars file
# 3.env variables we can set env varible by using export keyword "export TF_VAR_sg_name=env-allow-all" we need to mention TF_VAR in front of env variable to identify by terraform
# 4.default values
# 5. user prompt.
