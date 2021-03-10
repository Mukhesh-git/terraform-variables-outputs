output "vpc_id" {
    value = aws_vpc.sample_vpc.id
}

output "igw_id" {
    value = aws_internet_gateway.sample_igw.id
}

output "subnet_id" {
    value = aws_subnet.private_subnet1a.id
}

output "nat_id" {
       value = aws_nat_gateway.nat_public1a.id
 }  

   output "eip_id" {
    value = aws_eip.public1a_nat_eip.id  
   }


