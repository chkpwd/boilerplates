variable "vm_count" {
  description = "Specific numerical count for the VMs"
  default = 3
}
variable "ssh_key" {
  description = "The public key to use for the cluster"
  sensitive = true
  default = ""
}
variable "node" {
  description = "First Proxmox Node"
  default = "octane"
}
variable "api_url" {
  # url is the hostname (FQDN if you have one) for the proxmox host you'd like to connect to to issue the commands. my proxmox host is 'prox-1u'. Add /api2/json at the end for the API
  description = "url for proxmox cluster"
  default = "https://172.16.16.3:8006/api2/json"
}
variable "token_id" {
  # api token id is in the form of: <username>@pam!<tokenId>
  description = "Token ID for the cluster"
  sensitive = true
  default = "terraform-prov@pve!terraform"
}
variable "token_secret" {
  # this is the full secret wrapped in quotes. 
  description = "Token secret for the proxmox cluster" 
  sensitive = true
  default = "60850beb-cbd0-473c-91a6-9188b06439ee"
}
variable "template_name" {
  description = "Template for the container to clone"
  default = "debian-x11-cloud-drive"
}
variable "vm_user" {
  description = "The username for the current template"
  default = "hyoga"
}
variable "ip_address" {
  description = "IPv4 Address for the VMs"
  default = "172.16.16.20"
}
variable "gateway" {
  description = "Set the gateway for the interface"
  default = "172.16.16.1"
}
variable "bridge" {
  description = "Linux Bridge for the VM"
  default = "vmbr0"
}
variable "disk_size" {
  description = "Size of the VM Disk"
  default = 15
}
variable "cpu_count" {
  description = "Core count for the VM"
  default = 2
}
variable "ram_size" {
  description = "RAM Size for the VM"
  default = 2048
}
variable "storage_location" {
  description = "Storage location for the VM"
  default = "Arenas"
}
variable "vlan_tag" {
  description = "VLAN tagging for the nic on the VM"
  default = "0"
}
variable "vm_name" {
  description = "Name/Hostname of the VM"
  default = "ansible-vm"
}