resource "aws_instance" "nop" {
  ami             = "ami-0c65adc9a5c1b5d7c"
  instance_type   = "t2.micro"
  key_name        = "foransible"
  vpc_security_group_ids = ["sg-05adaf452b268c335"]
  tags = {
    Name = "nop"
  }
}
output "nop_url" {
  value = format("%s ansible_user=ubuntu", aws_instance.nop.public_ip)
}