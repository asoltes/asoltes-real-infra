resource "aws_instance" "dashboard" {
  ami                         = "ami-01441c79a2c8e534b"
  associate_public_ip_address = "true"
  availability_zone           = "ap-southeast-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"
  key_name                             = "as-apse1-prod"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
  }

  monitoring = "false"
  private_ip = "172.31.26.51"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  security_groups        = ["launch-wizard-1"]
  source_dest_check      = "true"
  subnet_id              = "subnet-3fb57b59"
  tenancy                = "default"
  vpc_security_group_ids = ["sg-050b0baf2b360e327"]
}
