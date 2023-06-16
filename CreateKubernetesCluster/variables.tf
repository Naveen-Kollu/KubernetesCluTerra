variable "resource_group_name" {
  type        = string
  description = "The name of the resource group to create."
  default     = "KubernetesCluRG"
}

variable "sa_name" {
  type        = string
  description = "The name of the storage account to create."
  default     = "team2storagenKubClu"

}

variable "azzuremission_team2_vnet" {
  type        = string
  description = "The name of the vnet to create."
  default     = "team2vnetKubClu"

}

variable "azzuremission_team2_subnet_deployagent" {
  type        = string
  description = "The name of the subnet to create."
  default     = "team2subnetKubClu"

}

variable "azzuremission_team2_subnet_deployagent_nsg" {
  type        = string
  description = "The name of the nsg to create."
  default     = "team2subnetNSGKubClu"

}




variable "moodtemplate_sa_name" {
  type        = string
  description = "The name of the storage account to create."
  default     = "moodtemplatesaname"

}

variable "sa_container" {
  type        = string
  description = "storage account container name."
  default     = "team2storagenKubClu"
}

variable "tenant_id" {
  type        = string
  description = "tenant id"
  default     = "5da7836f-f1fb-4c6a-8bde-e8599ea001a6"
}
variable "kv_name" {
  type        = string
  description = "tenant id"
  default     = "team2KayvaltKubClu"
}



variable "location" {
  type        = string
  description = "The location for the resource group."
  default     = "eastus"
}

variable "tags" {
  type        = map(any)
  description = "A map of tags to apply to the resource group."
  default     = {}
}
