# ecr-actions-demo
A simple demo to demonstrate how to create an ECR repo and have github actions build and deploy a simple docker image.
For the sake of this demo we are using the [cloudflared](https://github.com/cloudflare/cloudflared) as an example docker image
that gets built using github actions.

## Terraform
Create an ECR repo using terraform code under the `terraform/` subfolder. This requires `terraform >= v0.12`.

```
$ cd terraform
$ terraform init
$ terraform plan
$ terraform apply
```
