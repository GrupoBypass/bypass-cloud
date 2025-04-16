output "ec2_visualizer_instance_id" {
  value = aws_instance.ec2_visualizer.id
  description = "The ID of the visualizer instance"
}

output "ec2_transformer_instance_id" {
  value = aws_instance.ec2_transformer.id
  description = "The ID of the transformer instance"
}

output "ec2_registry_instance_id" {
  value = aws_instance.ec2_registry.id
  description = "The ID of the registry instance"
}