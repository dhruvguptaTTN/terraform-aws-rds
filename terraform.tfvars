# Project and Tagging
name = "myproject"
common_tags = {
  Environment = "production"
  Owner       = "devops-team"
}

# VPC and Networking
vpc_id     = "vpc-09aceeb53e4bd8994"
subnet_ids = ["subnet-045f3f18b376dd1dc", "subnet-0f98d5a1bdbba09c7"]

# Database Configuration
create_aurora             = true
database_module           = "mysql"
engine                    = "aurora-mysql"
engine_version            = "8.0.mysql_aurora.3.06.1"
parameter_family          = "aurora-mysql8.0"
instance_class            = "db.t4g.medium"
database_name             = "appdb"
master_username           = "admin"
master_password           = "StrongP@ssw0rd!"  # Replace with a secure password
create_username_password  = false  # Set to true to generate a random password

# Subnet and Security Groups
create_subnet_group   = true
create_security_group = true
sg_allow_inbound_cidrs = ["172.31.0.0/16"]  # Replace with your CIDR blocks

# IAM Role
create_role = true
role_arn    = []  # Leave empty if create_role is true

# Availability Zones
availability_zones = ["us-east-1a", "us-east-1b"]

# Backup and Maintenance
backup_retention_period = 7
preferred_backup_window = "22:00-23:00"
maintenance_window      = "Sun:21:00-Sun:22:00"

# Storage
allocated_storage     = 20
max_allocated_storage = 50
storage_type          = "gp3"
storage_encrypted     = true
kms_key_arn           = ""  # Provide if using a custom KMS key

# Additional Settings
multi_az                         = false
read_replica                     = true
publicly_accessible              = false
skip_final_snapshot              = true
apply_immediately                = true
auto_minor_version_upgrade       = false
copy_tags_to_snapshot            = true
enabled_cloudwatch_logs_exports  = ["error", "slowquery"]
iam_database_authentication_enabled = false

# Secrets Management
secret_method  = false  # Set to true to use AWS Secrets Manager
ssm_kms_key_id = ""     # Provide if using a custom KMS key for SSM

# MySQL Users
mysql_users = ["appuser", "readonly"]
