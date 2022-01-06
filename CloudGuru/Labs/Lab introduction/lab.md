
Download And Manually Install the Terraform Binary
    Download the appropriate Terraform binary package for the provided lab server VM (Linux 64-bit) using the wget command.
    Unzip the downloaded zip file.
    Place the unzipped Terraform binary in the path of the VM operating system so the binary is accessible system-wide.
    Test that the Terraform binary is functioning properly by checking the version information that is returned.

Clone Over Code for Terraform Providers
    Create a providers directory.
    Switch into the providers directory.
    Create a main.tf file using the code provided in the lab's GitHub repo.

Deploy the Code with Terraform Apply
    Enable verbose output logging for Terraform commands using the TF_LOG=TRACE command.
    Initialize the working directory where the code is located.
    Review the actions that will be performed when you deploy the code using the terraform plan command.
    Deploy the code with the terraform apply command.
    Verify that your resources were created and that the providers are working as intended.aa
    Tear down the infrastructure using the terraform destroy --auto-approve command.


wget -c https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_linux_amd64.zip
unzip terraform_1.0.8_linux_amd64.zip
echo $PATH
sudo mv terraform /usr/local/bin

mkdir providers
vim main.tf

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}

resource "aws_sns_topic" "topic-us-east" {
  provider = aws.us-east-1
  name     = "topic-us-east"
}

resource "aws_sns_topic" "topic-us-west" {
  provider = aws.us-west-2
  name     = "topic-us-west"
}

export TF_LOG=TRACE
