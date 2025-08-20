data "ami_id" "joindevops" {
    owners = ["973714476881"]
    most_recent = true


    filters {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filters {
        name = "root-device-type"
        values = ["ebs"]
    }

    filters {
        name = "virtualization-type"
        values = ["hvm"]
    } 
}

output "ami_id" {
    value = data.aws_ami.joindevops.id
  
}