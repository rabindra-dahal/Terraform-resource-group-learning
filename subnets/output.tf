output "ProdSubnet" {
  description = "Subnet defined for production subnet ID"
  value = azurerm_subnet.subnet1.id

}
output "DevSubnet" {
  description = "Subnet defined for development subnet ID"
  value = azurerm_subnet.subnet2.id

}