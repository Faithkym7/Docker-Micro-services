provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0b2777f4fd0d1712a" 
  instance_type = "t3.micro"

  tags = {
    Name = "Moringa"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y python3",
      "sudo apt-get install -y ansible",
    ]
  }
}

output "instance_ip" {
  value = aws_instance.example.public_ip
}
