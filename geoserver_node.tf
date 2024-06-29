data "template_file" "user_data" {
  template = file("${path.module}/user_data.sh")
  vars = {
    project  = var.project_name
    domain_name = var.domain_name
    hosted_zone_id = var.hosted_zone_id
    ms_teams_webhook = var.ms_teams_webhook
  }
}

resource "aws_instance" "geoserver_node" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.ssh_key
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.id
  user_data              = data.template_file.user_data.rendered
  vpc_security_group_ids = [aws_security_group.security_group.id]
  subnet_id              = aws_subnet.public_subnet_az1.id

  root_block_device {
    volume_type           = "gp3"
    volume_size           = "30"
    delete_on_termination = "true"
    encrypted             = "true"
  }

}