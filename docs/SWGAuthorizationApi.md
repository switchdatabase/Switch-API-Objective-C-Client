# SWGAuthorizationApi

All URIs are relative to *http://tr02.switchapi.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tokenGet**](SWGAuthorizationApi.md#tokenget) | **GET** /Token | Generate Access Token


# **tokenGet**
```objc
-(NSURLSessionTask*) tokenGetWithAPIKey: (NSString*) aPIKey
    signature: (NSString*) signature
    expire: (NSNumber*) expire
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Generate Access Token

For generating Access Token, you need API Key and API Secret parameters that are provided from the developer portal. At the request, API Key that will be sent by using header is generated as portal API Key and Signature parameter is generated as md5(APISecret + ExpireTimestamp) format. At Expire parameter, token's expire date and time information must be proper to ISO 8601 standarts and Unix Time format with msec information. 

### Example 
```objc

NSString* aPIKey = @"aPIKey_example"; // Your Switch API Key.
NSString* signature = @"signature_example"; // Signature parameter is generated as md5(APISecret + ExpireTimestamp) format.
NSNumber* expire = @789; // Expire parameter, token's expire date and time information must be proper to ISO 8601 standarts and Unix Time format with msec information.

SWGAuthorizationApi*apiInstance = [[SWGAuthorizationApi alloc] init];

// Generate Access Token
[apiInstance tokenGetWithAPIKey:aPIKey
              signature:signature
              expire:expire
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAuthorizationApi->tokenGet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aPIKey** | **NSString***| Your Switch API Key. | 
 **signature** | **NSString***| Signature parameter is generated as md5(APISecret + ExpireTimestamp) format. | 
 **expire** | **NSNumber***| Expire parameter, token&#39;s expire date and time information must be proper to ISO 8601 standarts and Unix Time format with msec information. | 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

