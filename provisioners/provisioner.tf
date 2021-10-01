resource "null_resource" "process" {
  provisioner "local-exec" {
    command = "ps -fuxa > list.txt"


  }

}