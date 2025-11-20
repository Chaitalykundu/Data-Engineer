variable "file_name" {
  type        = list(string)
  description = "List of files to create"
  default     = ["dynamic_file1.txt", "dynamic_file2.txt", "dynamic_file3.txt"]
}