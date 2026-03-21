targetScope = 'resourceGroup'

@description('Azure region')
param location string = resourceGroup().location

@description('Storage account name')
param storageAccountName string

@description('Environment tag')
param environment string

@description('Owner tag')
param owner string = 'rambabu'

@description('Cost center tag')
param costCenter string = 'devops-learning'

resource storage 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  tags: {
    environment: environment
    owner: owner
    costCenter: costCenter
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

resource logAnalytics 'Microsoft.OperationalInsights/workspaces@2022-10-01' = {
  name: 'law-${storageAccountName}'
  location: location
  tags: {
    environment: environment
    owner: owner
    costCenter: costCenter
    project: 'azure-devops-bicep-multistage-cicd'
  }
  properties: {
    sku: {
      name: 'PerGB2018'
    }
    retentionInDays: 30
  }
}

resource diag 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = {
  name: 'diag-storage'
  scope: storage
  properties: {
    workspaceId: logAnalytics.id
    metrics: [
      {
        category: 'AllMetrics'
        enabled: true
      }
    ]
  }
}
