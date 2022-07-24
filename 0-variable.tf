variable "project" {
  type = map(string)
  default = {
    id = "infra-2-357206"
    name = "infra-2"
  }
}

variable "region" {
  type = map(string)  
  default = {
    name = "europe-west3"
    zone = "europe-west3-a"
  }
}


variable "machine_type_general" {
  default = "e2-small"
}


variable "machine_type_spot" {
  default = "e2-small"
}



variable "gitlab_runner" {
  type = map(string)  
  default = {
    token = "GR1348941j4xMYzjTjcwKSxAXCoy2"
    url = "https://gitlab.com/"
    image = "ubuntu:16.04"
    namespace = "gitlab"
    tags = "k8s"
  }
}
