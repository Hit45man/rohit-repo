provider "aws" {
  region = "ap-south-1"
}



resource "aws_db_instance" "my-db" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = var.instance_class
  port                 = "3306"
  db_name              = "mydb"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  availability_zone    = "ap-south-1a"
  publicly_accessible  = true
  skip_final_snapshot  = true


  tags = {
    name = "mysql rds instance"
    
  }
}