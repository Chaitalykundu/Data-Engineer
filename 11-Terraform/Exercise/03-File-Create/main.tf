resource "local_file" "tea"{
    filename = "./tea_file.txt"
    content = "We love tea!"
}



resource "local_file" "pet"{
    filename = "./pet_file.txt"
    content = "I don't like per at all"
}


# Steps:
# 1. Write code in main
# run terraform init
# run terraform plan
# run terraform apply