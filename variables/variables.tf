variable "region" {
  default = "ap-southeast-1"
}
variable "amis" {
  default = {
    "us-east-1" = "ami-b374d5a5"
    "ap-southeast-1" = "ami-0cd31be676780afa7"
  }
}
