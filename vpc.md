## vpc 관련 설명


### 코드
```agsl
resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support = "true"
  enable_dns_hostnames = "true"
  tags = {
    Name = "main"
  }
}
```
내용 
```
    1. cidr_block : ip 주소 대역폭 설정 /16은 주소 길이
    관련 내용 링크: https://ko.wikipedia.org/wiki/%EC%82%AC%EC%84%A4%EB%A7%9D
    cidr 계산기 : https://www.ipaddressguide.com/cidr 
```