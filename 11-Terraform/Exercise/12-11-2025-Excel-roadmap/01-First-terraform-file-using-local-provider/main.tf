resource "local_file" "pet_name" {
  filename = "pet.txt"
  content  = "Cat, Dog, Tiger, Lion etc"
}