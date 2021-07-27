resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 8
  tags              = var.tags
}

resource "aws_ebs_snapshot" "example_snapshot" {
    volume_id   = aws_ebs_volume.example.id
    tags        = var.tags
}

resource "aws_ami" "example" {
  name                = "terraform-example"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/xvda"
    snapshot_id = aws_ebs_snapshot.example_snapshot.id
    volume_size = 8
  }
    tags = var.tags
}

resource "aws_launch_configuration" "my_LC" {
  image_id               = aws_ami.example.id
  instance_type          = "t2.micro"
//   security_groups        = [aws_security_group.my_sg.id]
  key_name                = "poc_tagging"
//   user_data = file("user_data.sh")
  lifecycle {
    create_before_destroy = true
  }
}
