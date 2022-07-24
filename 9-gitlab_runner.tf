module "gitlab-runner" {
  source                    = "DeimosCloud/gitlab-runner/kubernetes"
  version = "1.4.0"
  release_name              = "${var.project["name"]}-runner"
  runner_registration_token = var.gitlab_runner["token"]
  namespace                 = var.gitlab_runner["namespace"]
  runner_tags               = var.gitlab_runner["tags"]
  runner_name               =  "${var.gitlab_runner["tags"]}-name"

  
  depends_on = [google_container_cluster.primary, google_container_node_pool.spot]
}



