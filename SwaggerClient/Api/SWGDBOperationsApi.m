#import "SWGDBOperationsApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGAddResponse.h"
#import "SWGBody.h"
#import "SWGError.h"
#import "SWGSetResponse.h"


@interface SWGDBOperationsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGDBOperationsApi

NSString* kSWGDBOperationsApiErrorDomain = @"SWGDBOperationsApiErrorDomain";
NSInteger kSWGDBOperationsApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SWGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Add is used for adding a data object to the list created at Switch DB.
/// You can choose the list that will be added tha data set to with List parameter that will be sent to Header. It's equal to INSERT query at the relational databases model. The data set that will be added to the database is transmited at request body. For versions upper than v1.2.1, if the data sent is an array, all items in the array are added one by one, so they are added as a whole. 
///  @param aPIKey Your Switch API Key. 
///
///  @param accessToken Your Access Token. 
///
///  @param list Your data list name. 
///
///  @param body Your new value JSON. 
///
///  @returns SWGAddResponse*
///
-(NSURLSessionTask*) addPostWithAPIKey: (NSString*) aPIKey
    accessToken: (NSString*) accessToken
    list: (NSString*) list
    body: (NSString*) body
    completionHandler: (void (^)(SWGAddResponse* output, NSError* error)) handler {
    // verify the required parameter 'aPIKey' is set
    if (aPIKey == nil) {
        NSParameterAssert(aPIKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"aPIKey"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accessToken' is set
    if (accessToken == nil) {
        NSParameterAssert(accessToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accessToken"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'list' is set
    if (list == nil) {
        NSParameterAssert(list);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"list"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Add"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (aPIKey != nil) {
        headerParams[@"APIKey"] = aPIKey;
    }
    if (accessToken != nil) {
        headerParams[@"AccessToken"] = accessToken;
    }
    if (list != nil) {
        headerParams[@"List"] = list;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGAddResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGAddResponse*)data, error);
                                }
                            }];
}

///
/// It's used for listing a data added before.
/// List parameter sent remarks the list that will be do listing work on at Header. It's equal to SELECT query at relational databases. 
///  @param aPIKey Your Switch API Key. 
///
///  @param accessToken Your Access Token. 
///
///  @param list Your data list name. 
///
///  @param body Your Switch DB Query. 
///
///  @returns void
///
-(NSURLSessionTask*) listPostWithAPIKey: (NSString*) aPIKey
    accessToken: (NSString*) accessToken
    list: (NSString*) list
    body: (SWGBody*) body
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'aPIKey' is set
    if (aPIKey == nil) {
        NSParameterAssert(aPIKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"aPIKey"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'accessToken' is set
    if (accessToken == nil) {
        NSParameterAssert(accessToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accessToken"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'list' is set
    if (list == nil) {
        NSParameterAssert(list);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"list"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/List"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (aPIKey != nil) {
        headerParams[@"APIKey"] = aPIKey;
    }
    if (accessToken != nil) {
        headerParams[@"AccessToken"] = accessToken;
    }
    if (list != nil) {
        headerParams[@"List"] = list;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// It's used for deleting a data added before at Switch DB.
/// List parameter sent remarks the list that will be deleted data from at Header and ListItemId parameter remarks the ID consisted by Switch DB for the data that will be deleted. It's equal to DELETE query at relational databases. 
///  @param aPIKey Your Switch API Key. 
///
///  @param accessToken Your Access Token. 
///
///  @param list Your data list name. 
///
///  @param listItemId Your list item id. 
///
///  @returns SWGSetResponse*
///
-(NSURLSessionTask*) setDeleteWithAPIKey: (NSString*) aPIKey
    accessToken: (NSString*) accessToken
    list: (NSString*) list
    listItemId: (NSString*) listItemId
    completionHandler: (void (^)(SWGSetResponse* output, NSError* error)) handler {
    // verify the required parameter 'aPIKey' is set
    if (aPIKey == nil) {
        NSParameterAssert(aPIKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"aPIKey"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accessToken' is set
    if (accessToken == nil) {
        NSParameterAssert(accessToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accessToken"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'list' is set
    if (list == nil) {
        NSParameterAssert(list);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"list"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'listItemId' is set
    if (listItemId == nil) {
        NSParameterAssert(listItemId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"listItemId"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Set"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (aPIKey != nil) {
        headerParams[@"APIKey"] = aPIKey;
    }
    if (accessToken != nil) {
        headerParams[@"AccessToken"] = accessToken;
    }
    if (list != nil) {
        headerParams[@"List"] = list;
    }
    if (listItemId != nil) {
        headerParams[@"ListItemId"] = listItemId;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGSetResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGSetResponse*)data, error);
                                }
                            }];
}

///
/// It's used for updating a data object that is already added to Switch DB.
/// In order to UPDATE a object, Listname and ListItemId parameters should be sent in the Header of the REQUEST as \"List\", \"ListItemId\", respectively, as shown in the example below. It's equal to UPDATE query at relational databases. The data set that will be edited is transmited to the database at request body. 
///  @param aPIKey Your Switch API Key. 
///
///  @param accessToken Your Access Token. 
///
///  @param list Your data list name. 
///
///  @param listItemId Your list item id. 
///
///  @param body Your new value JSON. 
///
///  @returns SWGSetResponse*
///
-(NSURLSessionTask*) setPostWithAPIKey: (NSString*) aPIKey
    accessToken: (NSString*) accessToken
    list: (NSString*) list
    listItemId: (NSString*) listItemId
    body: (NSString*) body
    completionHandler: (void (^)(SWGSetResponse* output, NSError* error)) handler {
    // verify the required parameter 'aPIKey' is set
    if (aPIKey == nil) {
        NSParameterAssert(aPIKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"aPIKey"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'accessToken' is set
    if (accessToken == nil) {
        NSParameterAssert(accessToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accessToken"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'list' is set
    if (list == nil) {
        NSParameterAssert(list);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"list"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'listItemId' is set
    if (listItemId == nil) {
        NSParameterAssert(listItemId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"listItemId"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kSWGDBOperationsApiErrorDomain code:kSWGDBOperationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Set"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (aPIKey != nil) {
        headerParams[@"APIKey"] = aPIKey;
    }
    if (accessToken != nil) {
        headerParams[@"AccessToken"] = accessToken;
    }
    if (list != nil) {
        headerParams[@"List"] = list;
    }
    if (listItemId != nil) {
        headerParams[@"ListItemId"] = listItemId;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGSetResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGSetResponse*)data, error);
                                }
                            }];
}



@end
