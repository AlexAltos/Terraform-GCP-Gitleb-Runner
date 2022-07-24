module "gitlab-runner" {
  source                    = "DeimosCloud/gitlab-runner/kubernetes"
  version = "1.4.0"
  release_name              = "${var.project["name"]}-runner"
  runner_registration_token = var.gitlab_runner["token"]
  namespace                 = var.gitlab_runner["namespace"]
  runner_tags               = var.gitlab_runner["tags"]
  runner_name               =  "${var.gitlab_runner["tags"]}-name"

  # Pass annotations to service account. This can be for workload/pod/ identity
  # service_account_annotations = {
  #   "iam.gke.io/gcp-service-account" = module.workload_identity["gitlab-runner"].gcp_service_account_email
  # }

  # Use Local cache on Kubernetes nodes
  #use_local_cache     = true

  # Mount docker socket instead of using docker-in-docker
  #mount_docker_socket = true

  depends_on = [google_container_cluster.primary, google_container_node_pool.spot]
}



