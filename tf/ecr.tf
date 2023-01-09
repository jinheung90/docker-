# 사실 ecr은 결국 스크립트를 도커로 올려야해서 그냥 외부에서 작업하는것이 빠르게 느껴졌다
resource "aws_ecr_repository" "spring_app_repo" {
  name = "spring_app_repo"
}

output "springApp-repo-URL" {
  value = aws_ecr_repository.spring_app_repo.repository_url
}

