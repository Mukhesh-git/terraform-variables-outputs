variable "vpc_cidr_block" {
type = string
default = "10.0.0.0/16"
}

variable "vpc_name" {
type = string
default = "sample_vpc"
}
  
variable "igw_name" {
  type = string
  default = "sample_igw"
}


variable "private_subnet1a" {
  type = string
  default = "10.0.1.0/24"
}

variable "private_subnet1a_zone" {
   type = string 
  default = "us-west-1a"
 }

variable "private_subnet1a_name" {
   type = string
   default = "private_subnet1a"
   }

variable "private_subnet1b" {
  type = string
  default = "10.0.2.0/24"
}

variable "private_subnet1b_zone" {
   type = string 
  default = "us-west-1c"
 }

variable "private_subnet1b_name" {
   type = string
   default = "private_subnet1b"
   }

variable "public_subnet1a" {
  type = string
  default = "10.0.3.0/24"
  }
  variable "public_subnet1a_zone" {
   type = string 
  default = "us-west-1a"
 }
  variable "public_subnet1a_name" {
   type = string
   default = "public_subnet1a"
   }

variable "public_subnet1b" {
  type = string
    default = "10.0.4.0/24"
}
variable "public_subnet1b_zone" {
   type = string 
  default = "us-west-1c"
 }
variable "public_subnet1b_name" {
   type = string
   default = "public_subnet1b"
   }

variable "private1a_route" {
   type = string
   default = "10.1.5.0/24"
   }

variable "private1a_route_name" {
   type = string
   default = "private1a_route"
   }

variable "private1b_route" {
   type = string
   default = "10.1.5.0/24"
   }

variable "private1b_route_name" {
   type = string
   default = "private1b_route"
   }

variable "public_route" {
   type = string
   default = "10.1.7.0/24"
   }

   variable "public_route_name" {
   type = string
   default = "public_route"
   }

variable "public1a_eip_name" {

   type = string 
  default = "public1a_nat_eip"
 }

variable "public1b_eip_name" {
   type = string 
     default = "public1b_nat_eip"
 }


variable "nat_public1a_name" {
   type = string 
  default = "public1a_nat"
 }

variable "nat_public1b_name" {
   type = string 
  default = "public1b_nat"
 }

