#! /bin/bash
# © Copyright IBM Corporation 2023
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

export RESOURCE_GROUP=${1:-"myMQResourceGroup"}
export CLUSTER_NAME=${2:-"myMQCluster"}
export REGION=${3:-"eastus"}

az group create --name $RESOURCE_GROUP --location $REGION

az aks create --resource-group $RESOURCE_GROUP --name $CLUSTER_NAME --node-count 2 --generate-ssh-keys

az aks get-credentials --resource-group $RESOURCE_GROUP --name $CLUSTER_NAME
