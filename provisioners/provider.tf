terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "5.98.0"
        }
    }


    backend "s3" {
        bucket = "mybucket-for-terraform-statefile"
        key = "provisioners"
        region = "us-east-1"
        #dynamodb_table = "table-locking-terraform-statefile" ##Now the dynamoDB is depreciated due to this we are using S3 native locking.
        encrypt = true
        use_lockfile = true ##Enable s3 native locking
    
    }
}

provider "aws" {
    #configuration options
}