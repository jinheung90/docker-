1. terraform 설치 in linux
    1. sudo yum install -y yum-utils
    2. sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
    3. sudo yum -y install terraform
2. terraform 설치 in windows
   1. https://developer.hashicorp.com/terraform/downloads
   2. 실행파일을 따로 보관 (c://terraform)
   3. 인텔리제이에서 플러그인 설치
   4. file -> settings -> tool -> terraform -> execute path 설정
3. terraform init
   1. 관리자 권한으로 해당 provider.tf가 있는 곳을 cd로 들어감 
   2. terraform init 실행
   3. 그러면 결과적으로 terraform.lock.hcl 등이 생기면서 실행가능한 상태가 됨
   
    

