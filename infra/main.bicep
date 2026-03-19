targetScope = 'resourceGroup'

@description('Azure region')
param location string = resourceGroup().location

@description('Storage account name')
param storageAccountName string

@description('Environment tag')
param environment string

resource storage 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  tags: {
    environment: environment
    project: 'azure-devops-bicep-multistage-cicd'
  }
  properties: {
    accessTier: 'Hot'
    minimumTlsVersion: 'TLS1_2'
    supportsHttpsTrafficOnly: true
    allowBlobPublicAccess: false
  }
}

output storageAccountName string = storage.name
