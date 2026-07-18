output "instance_id" {
  value       = aws_instance.app.id
  description = "EC2_INSTANCE_ID"
}

output "github_actions_role_arn" {
  value       = aws_iam_role.github_actions.arn
  description = "AWS_GITHUB_ACTIONS_ROLE_ARN"
}

output "instance_public_ip" {
  value       = aws_eip.app.public_ip
  description = "Elastic IP."
}
