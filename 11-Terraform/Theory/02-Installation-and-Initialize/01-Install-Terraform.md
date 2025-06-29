# Overview

- [Overview](#overview)
- [Install Terraform on Windows](#install-terraform-on-windows)
  - [Option 1: Manual Installation (Recommended for beginners)](#option-1-manual-installation-recommended-for-beginners)
- [Option 2: Install via Chocolatey (Command-line method)](#option-2-install-via-chocolatey-command-line-method)
- [Notes](#notes)

&nbsp;

&nbsp;

&nbsp;

# Install Terraform on Windows

We can install terraform in wo ways

1. Manual Installation (Recommended for beginners)
2. Install via Chocolatey (Command-line method)

&nbsp;

&nbsp;

## Option 1: Manual Installation (Recommended for beginners)

1. Download Terraform

    - Go to the official Terraform download page:
      👉 [https://developer.hashicorp.com/terraform/downloads](https://developer.hashicorp.com/terraform/downloads)

    - Choose your OS as Windows (64-bit) and download the .zip file.

2. Extract the ZIP File

    - Extract the downloaded ZIP file to a folder of your choice, e.g.:
      `C:\Terraform`

3. Add Terraform to System PATH
    Search for "Environment Variables" in Windows search and open:

        - Go to System Properties > Environment Variables

        - Under System Variables, find and select Path, then click Edit

        - Click New and add the path where terraform.exe is located, e.g.:

    `C:\Terraform`

4. Verify the Installation

    - Open Command Prompt (CMD) or PowerShell.

    - Type:

      ```sh
      terraform -version
      ```

    - You should see the installed version printed.

&nbsp;

&nbsp;

# Option 2: Install via Chocolatey (Command-line method)

1. Requires Chocolatey to be pre-installed. If not, install it from: [https://chocolatey.org/install](https://chocolatey.org/install)

2. Run the following command in CMD as Administrator:

   ```sh
   choco install terraform -y
   ```

3. Verify:

   ```sh
   terraform -version
   ```

&nbsp;

&nbsp;

# Notes

- You do not need to install any dependencies like Python or Java.
- Terraform is a single binary executable.
- You can update it by replacing the .exe file with the newer version.

&nbsp;

&nbsp;

&nbsp;

&nbsp;
