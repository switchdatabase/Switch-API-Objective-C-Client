# SWGDBOperationsApi

All URIs are relative to *http://tr02.switchapi.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPost**](SWGDBOperationsApi.md#addpost) | **POST** /Add | Add is used for adding a data object to the list created at Switch DB.
[**listPost**](SWGDBOperationsApi.md#listpost) | **POST** /List | It&#39;s used for listing a data added before.
[**setDelete**](SWGDBOperationsApi.md#setdelete) | **DELETE** /Set | It&#39;s used for deleting a data added before at Switch DB.
[**setPost**](SWGDBOperationsApi.md#setpost) | **POST** /Set | It&#39;s used for updating a data object that is already added to Switch DB.


# **addPost**
```objc
-(NSURLSessionTask*) addPostWithAPIKey: (NSString*) aPIKey
    accessToken: (NSString*) accessToken
    list: (NSString*) list
    body: (NSString*) body
        completionHandler: (void (^)(SWGAddResponse* output, NSError* error)) handler;
```

Add is used for adding a data object to the list created at Switch DB.

You can choose the list that will be added tha data set to with List parameter that will be sent to Header. It's equal to INSERT query at the relational databases model. The data set that will be added to the database is transmited at request body. For versions upper than v1.2.1, if the data sent is an array, all items in the array are added one by one, so they are added as a whole. 

### Example 
```objc

NSString* aPIKey = @"aPIKey_example"; // Your Switch API Key.
NSString* accessToken = @"accessToken_example"; // Your Access Token.
NSString* list = @"list_example"; // Your data list name.
NSString* body = body_example; // Your new value JSON.

SWGDBOperationsApi*apiInstance = [[SWGDBOperationsApi alloc] init];

// Add is used for adding a data object to the list created at Switch DB.
[apiInstance addPostWithAPIKey:aPIKey
              accessToken:accessToken
              list:list
              body:body
          completionHandler: ^(SWGAddResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDBOperationsApi->addPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aPIKey** | **NSString***| Your Switch API Key. | 
 **accessToken** | **NSString***| Your Access Token. | 
 **list** | **NSString***| Your data list name. | 
 **body** | **NSString***| Your new value JSON. | 

### Return type

[**SWGAddResponse***](SWGAddResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPost**
```objc
-(NSURLSessionTask*) listPostWithAPIKey: (NSString*) aPIKey
    accessToken: (NSString*) accessToken
    list: (NSString*) list
    body: (SWGBody*) body
        completionHandler: (void (^)(NSError* error)) handler;
```

It's used for listing a data added before.

List parameter sent remarks the list that will be do listing work on at Header. It's equal to SELECT query at relational databases. 

### Example 
```objc

NSString* aPIKey = @"aPIKey_example"; // Your Switch API Key.
NSString* accessToken = @"accessToken_example"; // Your Access Token.
NSString* list = @"list_example"; // Your data list name.
SWGBody* body = [[SWGBody alloc] init]; // Your Switch DB Query.

SWGDBOperationsApi*apiInstance = [[SWGDBOperationsApi alloc] init];

// It's used for listing a data added before.
[apiInstance listPostWithAPIKey:aPIKey
              accessToken:accessToken
              list:list
              body:body
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGDBOperationsApi->listPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aPIKey** | **NSString***| Your Switch API Key. | 
 **accessToken** | **NSString***| Your Access Token. | 
 **list** | **NSString***| Your data list name. | 
 **body** | [**SWGBody***](SWGBody*.md)| Your Switch DB Query. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDelete**
```objc
-(NSURLSessionTask*) setDeleteWithAPIKey: (NSString*) aPIKey
    accessToken: (NSString*) accessToken
    list: (NSString*) list
    listItemId: (NSString*) listItemId
        completionHandler: (void (^)(SWGSetResponse* output, NSError* error)) handler;
```

It's used for deleting a data added before at Switch DB.

List parameter sent remarks the list that will be deleted data from at Header and ListItemId parameter remarks the ID consisted by Switch DB for the data that will be deleted. It's equal to DELETE query at relational databases. 

### Example 
```objc

NSString* aPIKey = @"aPIKey_example"; // Your Switch API Key.
NSString* accessToken = @"accessToken_example"; // Your Access Token.
NSString* list = @"list_example"; // Your data list name.
NSString* listItemId = @"listItemId_example"; // Your list item id.

SWGDBOperationsApi*apiInstance = [[SWGDBOperationsApi alloc] init];

// It's used for deleting a data added before at Switch DB.
[apiInstance setDeleteWithAPIKey:aPIKey
              accessToken:accessToken
              list:list
              listItemId:listItemId
          completionHandler: ^(SWGSetResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDBOperationsApi->setDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aPIKey** | **NSString***| Your Switch API Key. | 
 **accessToken** | **NSString***| Your Access Token. | 
 **list** | **NSString***| Your data list name. | 
 **listItemId** | **NSString***| Your list item id. | 

### Return type

[**SWGSetResponse***](SWGSetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPost**
```objc
-(NSURLSessionTask*) setPostWithAPIKey: (NSString*) aPIKey
    accessToken: (NSString*) accessToken
    list: (NSString*) list
    listItemId: (NSString*) listItemId
    body: (NSString*) body
        completionHandler: (void (^)(SWGSetResponse* output, NSError* error)) handler;
```

It's used for updating a data object that is already added to Switch DB.

In order to UPDATE a object, Listname and ListItemId parameters should be sent in the Header of the REQUEST as \"List\", \"ListItemId\", respectively, as shown in the example below. It's equal to UPDATE query at relational databases. The data set that will be edited is transmited to the database at request body. 

### Example 
```objc

NSString* aPIKey = @"aPIKey_example"; // Your Switch API Key.
NSString* accessToken = @"accessToken_example"; // Your Access Token.
NSString* list = @"list_example"; // Your data list name.
NSString* listItemId = @"listItemId_example"; // Your list item id.
NSString* body = body_example; // Your new value JSON.

SWGDBOperationsApi*apiInstance = [[SWGDBOperationsApi alloc] init];

// It's used for updating a data object that is already added to Switch DB.
[apiInstance setPostWithAPIKey:aPIKey
              accessToken:accessToken
              list:list
              listItemId:listItemId
              body:body
          completionHandler: ^(SWGSetResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGDBOperationsApi->setPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aPIKey** | **NSString***| Your Switch API Key. | 
 **accessToken** | **NSString***| Your Access Token. | 
 **list** | **NSString***| Your data list name. | 
 **listItemId** | **NSString***| Your list item id. | 
 **body** | **NSString***| Your new value JSON. | 

### Return type

[**SWGSetResponse***](SWGSetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

