terraform {
  required_version = ">=1.0.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.7.0"
    }
  }
}

provider "local" {}

resource "local_file" "hello" {
  filename = var.file_name
  content  = var.file_content
}

resource "local_file" "hello1" {
  filename = var.file_name
  content  = var.file_content
}

resource "local_file" "hello2" {
  filename = var.file_name
  content  = var.file_content
}