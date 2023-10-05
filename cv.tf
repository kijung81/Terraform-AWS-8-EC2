
check "response" {
  data "http" "apache" {
    url      = "http://${aws_instance.web1.public_dns}"
  }

  assert {
    condition     = data.http.apache.status_code == 200
    error_message = "Terramino response is ${data.http.apache.status_code}"
  }
}

