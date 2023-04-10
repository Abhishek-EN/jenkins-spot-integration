resource "aws_spot_fleet_request" "SPOT" {
  iam_fleet_role                = "arn:aws:iam::1234567890:role/aws-ec2-spot-fleet-tagging-role" # Your spot fleet role arn
  target_capacity               = 1
  allocation_strategy           = "lowestPrice"
  wait_for_fulfillment          = true
  terminate_instances_on_delete = true

  launch_template_config {
    launch_template_specification {
      id      = "lt-123567890" # Your Launch template ID
      version = "1" # Launch template version
    }
  }
}