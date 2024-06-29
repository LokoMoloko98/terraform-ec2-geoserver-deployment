output "geoserver_node_ip" {
  value = aws_instance.geoserver_node.public_ip
}

output "geoserver_node_instance_id" {
  value = aws_instance.geoserver_node.id
}

output "geoserver_node_url" {
  value = "https://${var.project_name}.${domain_name}"
}
