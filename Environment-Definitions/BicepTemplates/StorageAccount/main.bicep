storageAccountName
skuName
skuTier
location

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
