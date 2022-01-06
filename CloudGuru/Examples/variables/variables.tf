variable "my-var" {
  description = "My test variable"
  type = sting
  default = "Hello"
}


#### Variable types

# String
variable "my-var" {
  type = string
  default = "Hello"
}

# list
variable "availability_zone_names" {
    type = list(string)
    default = ["us-weast-1"]
}

# list objects
variable "docker_ports" {
  type = list(object({
      internal = number
      external = number
      protocol = string
  }))
  default = [
      {
          internal = 8300
          external = 8300
          protocol = "tcp"
      }
  ]
}

# Validation variable
variable "my-var" {
  type = string
  default = "Hello"
  validation {
      condition = length(var.my-var) > 4
      error_message = "The string must be more than 4 characters"
  }
}

# Variable sensitive information
variable "my-var" {
  type = string
  default = "Hello"
  sensitive = true
}