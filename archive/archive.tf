terraform {
  required_providers {
    archive = {
      source  = "hashicorp/archive"
      version = "2.2.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

resource "random_string" "random" {
  length  = 5
  special = false

}

data "archive_file" "arquivozip" {
  type        = "zip"
  source_dir  = "data_backup"
  output_path = "backup_dir.zip"

}
output "arquivozip" {
  value = data.archive_file.arquivozip.output_size
}

output "random_string" {
  value = random_string.random.result
  
}