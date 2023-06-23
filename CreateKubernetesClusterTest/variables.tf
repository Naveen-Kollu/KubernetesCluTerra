variable "resource_group_name" {
  type        = string
  description = "The name of the resource group to create."
  default     = "Team2Test"
}

variable "clustername" {
  type        = string
  description = "The name of the cluster name to create."
  default     = "Team2kubclunameTest"
}

variable "sa_name" {
  type        = string
  description = "The name of the storage account to create."
  default     = "team2storagenKubCluTest"

}

variable "azzuremission_team2_vnet" {
  type        = string
  description = "The name of the vnet to create."
  default     = "team2vnetKubCluTest"

}

variable "azzuremission_team2_subnet_deployagent" {
  type        = string
  description = "The name of the subnet to create."
  default     = "team2subnetKubCluTest"

}

variable "azzuremission_team2_subnet_deployagent_nsg" {
  type        = string
  description = "The name of the nsg to create."
  default     = "team2subnetNSGKubCluTest"

}

variable "moodtemplate_sa_name" {
  type        = string
  description = "The name of the storage account to create."
  default     = "moodtemplatesanameTest"

}

variable "sa_container" {
  type        = string
  description = "storage account container name."
  default     = "team2storagenKubCluTest"
}

variable "tenant_id" {
  type        = string
  description = "tenant id"
  default     = "5da7836f-f1fb-4c6a-8bde-e8599ea001a6"
}
variable "kv_name" {
  type        = string
  description = "tenant id"
  default     = "team2KayvaltKubCluTest"
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
