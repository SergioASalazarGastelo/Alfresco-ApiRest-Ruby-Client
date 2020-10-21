# Alfresco::ProbesApi

All URIs are relative to *https://localhost/alfresco/api/-default-/public/alfresco/versions/1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_probe**](ProbesApi.md#get_probe) | **GET** /probes/{probeId} | Check readiness and liveness of the repository


# **get_probe**
> ProbeEntry get_probe(probe_id)

Check readiness and liveness of the repository

**Note:** this endpoint is available in Alfresco 6.0 and newer versions.  Returns a status of 200 to indicate success and 503 for failure.  The readiness probe is normally only used to check repository startup.  The liveness probe should then be used to check the repository is still responding to requests.  **Note:** No authentication is required to call this endpoint. 

### Example
```ruby
# load the gem
require 'alfresco_ruby'
# setup authorization
Alfresco.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Alfresco::ProbesApi.new

probe_id = "probe_id_example" # String | The name of the probe: * -ready- * -live- 


begin
  #Check readiness and liveness of the repository
  result = api_instance.get_probe(probe_id)
  p result
rescue Alfresco::ApiError => e
  puts "Exception when calling ProbesApi->get_probe: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **probe_id** | **String**| The name of the probe: * -ready- * -live-  | 

### Return type

[**ProbeEntry**](ProbeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



