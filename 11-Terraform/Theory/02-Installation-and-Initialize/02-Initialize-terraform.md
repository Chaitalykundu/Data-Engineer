# Overview

- [Overview](#overview)
- [Steps](#steps)
  - [Output](#output)
  - [Code Explanation](#code-explanation)
- [What It Does](#what-it-does)
  - [When you run: `terraform init`](#when-you-run-terraform-init)
  - [When you run: `terraform plan`](#when-you-run-terraform-plan)
  - [When you run: `terraform plan`](#when-you-run-terraform-plan-1)
- [Why Use Outputs?](#why-use-outputs)

&nbsp;

&nbsp;

&nbsp;

# Steps

1.  Create Your First Project

    ```bash
    mkdir terraform-demo
    cd terraform-demo
    ```

2.  Create a file named `main.tf` and Write code in it

    ```hcl
    # main.tf

     output "message" {
       value = "Hello, Terraform!"
     }
    ```

3.  Open your terminal in the same directory and run:

    ```bash
    terraform init
    terraform plan
    terraform apply
    ```

4.  When prompted, type `yes`.

&nbsp;

&nbsp;

## Output

```makefile
Outputs:

message = "Hello, Terraform!"
```

&nbsp;

&nbsp;

## Code Explanation

```hcl
   # main.tf

    output "message" {
      value = "Hello, Terraform!"
    }
```

1. `output "message" { ... }`

   - This block defines an **output variable** named `message`.

   - In Terraform, output blocks are used to display useful information after terraform apply finishes.

   - You can define **multiple outputs** and use them to show IP addresses, resource names, or anything else you've provisioned.

2. `value = "Hello, Terraform!"`

   - This line sets the **value of the output** named message.

   - In this case, it’s just a static string: `"Hello, Terraform!"`

   - When you run `terraform apply`, this message will be printed in the console.

&nbsp;

&nbsp;

# What It Does

### When you run: `terraform init`

- Terraform will downloads the **provider plugin** and Initialize the terraform file

&nbsp;

### When you run: `terraform plan`

- Terraform will Plan the changes (though there are no resources here) and show things are to be changed

&nbsp;

### When you run: `terraform plan`

- Apply the configuration
- Then display the output

&nbsp;

&nbsp;

# Why Use Outputs?

Outputs are helpful for:

- Returning values like resource IDs, public IPs, URLs
- Passing values between Terraform modules
- Debugging or logging what's created
