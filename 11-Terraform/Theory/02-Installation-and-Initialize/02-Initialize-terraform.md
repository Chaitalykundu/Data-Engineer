# Overview

- [Overview](#overview)
- [Steps](#steps)
  - [Output](#output)
  - [Code Explanation](#code-explanation)
- [What It Does](#what-it-does)
- [Why Use Outputs?](#why-use-outputs)

&nbsp;

&nbsp;

&nbsp;

# Steps

1. Write code in `main.tf`

   ```hcl
   # main.tf

    output "message" {
      value = "Hello, Terraform!"
    }
   ```

2. Open your terminal in the same directory and run:

   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

3. When prompted, type `yes`.

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

When you run:

    ```bash
    terraform apply
    ```

Terraform will:

- Initialize (if needed)
- Plan the changes (though there are no resources here)
- Apply the configuration
- Then display the output

&nbsp;

&nbsp;

# Why Use Outputs?

Outputs are helpful for:

- Returning values like resource IDs, public IPs, URLs
- Passing values between Terraform modules
- Debugging or logging what's created
