variable "file_name" {
  description = "Name of the file Terraform will create"
  type        = string
  default     = "hello.txt"
}

variable "file_content" {
  description = "Content written into the file file_name"
  type        = string
  default     = "Hello from Terraform Variables!"
}