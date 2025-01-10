@description('Specifies the name of the storage account name.')
param storageAccountName string = 'stg${uniqueString(resourceGroup().id)}'

@description('Specifies the name of the storage account sku name.')
param skuName string = 'Standard_LRS'

@description('Specifies the name of the storage account sku tier.')
param skuTier string = 'Standard'

@description('Specifies the name of the storage account location.')
param location string = resourceGroup().location

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: parameters('storageAccountName')
  location: parameters('location')
  sku: {
    name: parameters('skuName')
    tier: parameters('skuTier')
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}
