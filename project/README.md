##  This Directory contains files and folders for the implementation of the Capstone Project

* Include a brief description of the application and of the solution and its components, configuration, implementation options, tools used, etc.

When fully deployed, the application displays information about a book, similar to a single catalog entry of an online book store. Displayed on the page is a description of the book, book details (ISBN, number of pages, and so on), and a few book reviews.

## Build Vagrant Environment that hosts the management node

1- In the local repository, run the Vagrantfile and access the management node. In our solution, we used the Virtual Box to host the management node. 

```bash
$ vagrant validate

$ vagrant up
```

2- Access the management node via *ssh*

```bash
$ vagrant ssh mgmt
```

The next bash steps will **ALL** be done inside the *mgmt node*.

# Configure Terraform and the public Cloud Platform

The public Cloud Platform chosen to deploy the application was Google Cloud Platform (gcp). 

# 1 Set-up Google Cloud Platform

1- Open the following URL https://console.cloud.google.com/education (hopefully the user already has a functional account with a working CUPON code; otherwise, Lab4 explains in detail how to create the account and introduce the CUPON.)

2- Create the Project. 
   Select on the top Menu Bar the Organization/Projects drop
down button, that will open a window for selecting and/or creating a Project, as illustrated in the following figure:

![Screenshot](images/screenshot.png)

# Provisone the application with Terraform

```bash
$ terraform init

$ terraform plan

$ terraform apply
```