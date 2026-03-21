output "created_file_name" {
  value = local_file.hello.filename
}

output "created_file_content" {
  value = local_file.hello.content
}