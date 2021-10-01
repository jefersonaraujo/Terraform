terraform {
  required_providers {
    random = {
      source  = "hashicorp/archive"
      version = "2.2.0"
    }
  }
}

data "archive_file" "arquivozip" {
  type        = "zip"
  source_dir  = "data_backup"
  output_path = "backup_dir.zip"

}
output "arquivozip" {
  value = data.archive_file.arquivozip.output_size
}