resource "local_file" "introduction" {
  filename = "introduction.txt"
  content   = "Hello I'm ${var.name}. I'm 25 years old and I'm a Data Engineer"
}