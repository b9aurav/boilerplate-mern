variable "github_repo_url" {
  description = "URL of the repository to deploy."
  default = "https://github.com/jalantechnologies/boilerplate-mern"
}

variable "app_config" {
  description = "Map of application config."
  default = ["mongodb://localhost:27017", "27017"]
}
