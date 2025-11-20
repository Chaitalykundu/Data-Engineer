resource "local_file" "multiple_file_generator_file_1" {
  filename = "file1.txt"
  content  = "This is file 1"
}
resource "local_file" "multiple_file_generator_file_2" {
  filename = "file2.txt"
  content  = "This is file 2"
}
resource "local_file" "multiple_file_generator_file_3" {
  filename = "file3.txt"
  content  = "This is file 3"
}

# generate multiple file using a single resource block
resource "local_file" "multiple_file_generator_dynamically" {
  for_each = toset(var.file_name)
  filename = each.key
  content  = "This is ${each.key}, created using the local provider and variable."
}