provider "aws"{
region="us-east-1"
}

resource "aws_instance" "ec2insta" {
    instance_type = "t2.micro"
    ami = "ami-0c101f26f147fa7fd"
    key_name =  "keypair89"
    
    subnet_id = aws_subnet.dev.id
    associate_public_ip_address = true
    tags = {
      Name="mysubnetpub"

    }
  }
