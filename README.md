# Terraform Beginner Bootcamp 2023

## Table of Content
- [Semantic Versioning ](#semantic-versioning-mage)
- [Fix the Terraform CLI](#fix-the-terraform-cli)
- [Sha bang](#sha-bang)
- [Permision CHMOD](#permisions-chmod )

## Git Commands !

git checkout -b 1_semnatic_versioning 
-  creates the branch
git push 
- pushes the branch

## Semantic Versioning :mage:

This project is going to utilize semantic versioning
[semver.org](https://semver.org/)

Given a version number MAJOR.MINOR.PATCH, increment the:

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes
Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.


## Fix the Terraform CLI 

- update the latest commands taking from:
[Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## Sha Bang #!

- Shebang (Unix)
[Shebang (Unix)](https://en.wikipedia.org/wiki/Shebang_(Unix))

Use sha bang to make the installation of the terraform cli automatic, **executable**

** #!/usr/bin/env bash **

## bin folder

-  Create a new folder called bin
- within the folder create a new file: install_terraform_cli.sh
 .sh is the BASH atribute.

## Run the executable:

With the source

`
source ./bin/install_terraform_cli
`
## Permisions CHMOD

[CHMOD](https://en.wikipedia.org/wiki/Chmod)

Wihout the source:
- check current privilages:
`
ls -la
`
change privilage:
`
chmod u+x ./bin/install_terraform_cli
`
Now we have to add the link to the gitpod.yml
      source ./bin/install_terraform_cli
      
## Gitpod before - instad init!

### Enviroment Variables ENV VAR

We can list all the env var using  `env ` command
We can filter specific grep eg.  `env | grep AWS_`

### Setting and unsetting the Env Vars

In the termial we can set using: 
- `export PROJECT_ROOT='/workspace/terraform-beginner-bootcamp-2023'`
In the terminal we can unset using:
- `unset PROJECT_ROOT`
We can set an env var termporairly when just running a command:
`PROJECT_ROOT='/workspace/terraform-beginner-bootcamp-2023' ./bin/install_terraform_cli.sh`

In the bash script we can set env var without writing export:
```sh
#!/usr/bin/env bash 
PROJECT_ROOT='/workspace/terraform-beginner-bootcamp-2023'
```
We can pring an env var using eg:
- `echo $PROJECT_ROOT`

Env var do not persist in all the eviroment eg terraform and AWS you need to set those indyvidually

### Persisting Env VAr in GitPod

 We can persist env vars into gitpod by storing then in Gitpod Secrets Storage 

 gp env HELLO='world'
 gp env PROJECT_ROOT='/workspace/terraform-beginner-bootcamp-2023'

### AWS CLI installation

AWS CLI in isntalled for this project via bash script:[`./bin/install_AWS_CLI`](./bin/install_AWS_CLI)
you need to set up an env var,
q

### need to create AWS credetials 

#### Terraform Basics

#### Terraform Registry

[Terraform Registry](https://registry.terraform.io/)

- **Resource**

- **Mapping**

- terraform **random provider** 


- Terraform Init
- Terraform Plan
- Terraform Apply // --auto-approve 
- Terraform destroy

to see an output  - terraform output
                  - terraform output "random_bucket_name"    

                  