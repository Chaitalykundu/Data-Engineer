resource "local_file" "flower"{
    filename = "./flower_list.txt"
    content = "Rose, Sun-flower, Lili"
}

# The output will be seen in console
output "LocalFileFlower"{
    value = "Local File flower is created"
}