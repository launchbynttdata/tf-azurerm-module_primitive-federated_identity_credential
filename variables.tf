// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

variable "name" {
  type        = string
  description = "The name of the federated identity credential"
}

variable "resource_group_name" {
  type        = string
  description = "The resource group to contain the federated identity credential"
}

variable "user_assigned_identity_id" {
  type        = string
  description = "The ID of the user assigned identity in which to create the federated identity credential"
}

variable "issuer" {
  type        = string
  description = "The URL of the external identity provider"
}

variable "subject" {
  type        = string
  description = "The identifier of the external software workload within the external identity provider"
}

variable "audience" {
  type        = list(string)
  description = <<-EOF
    The audience as it appears in the external token.
    Must be set to 'api://AzureADTokenExchange' to be exchanged for an Entra ID token.
  EOF
  default     = ["api://AzureADTokenExchange"]
}
