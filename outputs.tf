output "geoserver_node" {
  value = aws_instance.geoserver_node.public_ip
}
