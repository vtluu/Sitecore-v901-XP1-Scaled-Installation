<#
Exposed parameters for creating the Collection Service, so you can change it for production
#>
$Prefix = "xp901" #This is usually the name of the site
$PSScriptRoot = "c:\xp" #This is the default destination folder from the git clone, if different then update this to point to the new location.
$Path = "$PSScriptRoot\config\xconnect-xp1-collectionsearch.json"

$Package = "$PSScriptRoot\Sitecore 9.0.1 rev. 171219 (OnPrem)_xp1collectionsearch.scwdp.zip"
$LicenseFile = "$PSScriptRoot\license.xml" #The Sitecore License.xml file
$SiteName = "$Prefix.sc" 

$SSLCert = "" #Todo: needs to be provided (applicable for production environment), if not then generated by the script (applicable for development environment).
$XConnectCert = "$Prefix.xconnect_client"

<#
The $Prefix, $SqlAdminUser, $SqlAdminPassword and $SqlServer needs to be changes. The rest can use the default (for development environment purposes) but for production it's recommended to be changed.
#>
$SqlDbPrefix = $Prefix
$SqlCollectionUser = "collectionuser"
$SqlCollectionPassword = "Test12345"
$SqlProcessingPoolsUser = "poolsuser"
$SqlProcessingPoolsPassword = "Test12345"
$SqlMarketingAutomationUser = "marketingautomationuser"
$SqlMarketingAutomationPassword = "Test12345"
$SqlMessagingUser = "messaginguser"
$SqlMessagingPassword = "Test12345"
$SqlServer = "RAMONASENIE0E1F" 

$SolrCorePrefix = $Prefix
$SolrUrl = "https://localhost:8983/solr" #Change to reflect the production Solr Url

$XConnectEnvironment ="Development" #For production environment use Production
$XConnectLogLevel = "Information" #Use Debug for Development

$CollectionSearchParams = @{     
    Path = $Path  
    Package = $Package     
    LicenseFile = $LicenseFile
    SiteName = $SiteName
    SSLCert = $SSLCert
    XConnectCert = $XConnectCert
    SqlDbPrefix = $SqlDbPrefix  
    SqlCollectionUser = $SqlCollectionUser
    SqlCollectionPassword = $SqlCollectionPassword
    SqlProcessingPoolsUser = $SqlProcessingPoolsUser
    SqlProcessingPoolsPassword = $SqlProcessingPoolsPassword
    SqlMarketingAutomationUser = $SqlMarketingAutomationUser
    SqlMarketingAutomationPassword = $SqlMarketingAutomationPassword
    SqlMessagingUser = $SqlMessagingUser
    SqlMessagingPassword = $SqlMessagingPassword
    SqlServer = $SqlServer 
    SolrCorePrefix = $SolrCorePrefix
    SolrUrl = $SolrUrl
    XConnectEnvironment = $XConnectEnvironment
    XConnectLogLevel = $XConnectLogLevel    
} 
Write-Host @CollectionSearchParams
Install-SitecoreConfiguration @CollectionSearchParams

<#
MIT License

Copyright (c) 2018 Ramon Aseniero

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
#> 