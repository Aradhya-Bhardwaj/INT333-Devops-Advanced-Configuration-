output "app_url" {
  value = "http://${aws_instance.app.public_ip}"
}
output "nagios_url" {
  value = "http://${aws_instance.monitor.public_ip}/nagios4"
}
