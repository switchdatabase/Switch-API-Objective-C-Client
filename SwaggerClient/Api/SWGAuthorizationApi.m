#import "SWGAuthorizationApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGError.h"


@interface SWGAuthorizationApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGAuthorizationApi

NSString* kSWGAuthorizationApiErrorDomain = @"SWGAuthorizationApiErrorDomain";
NSInteger kSWGAuthorizationApiMissingParamErrorCode = 234513;

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
/// Generate Access Token
/// For generating Access Token, you need API Key and API Secret parameters that are provided from the developer portal. At the request, API Key that will be sent by using header is generated as portal API Key and Signature parameter is generated as md5(APISecret + ExpireTimestamp) format. At Expire parameter, token's expire date and time information must be proper to ISO 8601 standarts and Unix Time format with msec information. 
///  @param aPIKey Your Switch API Key. 
///
///  @param signature Signature parameter is generated as md5(APISecret + ExpireTimestamp) format. 
///
///  @param expire Expire parameter, token's expire date and time information must be proper to ISO 8601 standarts and Unix Time format with msec information. 
///
///  @returns NSString*
///
-(NSURLSessionTask*) tokenGetWithAPIKey: (NSString*) aPIKey
    signature: (NSString*) signature
    expire: (NSNumber*) expire
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'aPIKey' is set
    if (aPIKey == nil) {
        NSParameterAssert(aPIKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"aPIKey"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthorizationApiErrorDomain code:kSWGAuthorizationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'signature' is set
    if (signature == nil) {
        NSParameterAssert(signature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"signature"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthorizationApiErrorDomain code:kSWGAuthorizationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'expire' is set
    if (expire == nil) {
        NSParameterAssert(expire);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"expire"] };
            NSError* error = [NSError errorWithDomain:kSWGAuthorizationApiErrorDomain code:kSWGAuthorizationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/Token"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (aPIKey != nil) {
        headerParams[@"APIKey"] = aPIKey;
    }
    if (signature != nil) {
        headerParams[@"Signature"] = signature;
    }
    if (expire != nil) {
        headerParams[@"Expire"] = expire;
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
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}



@end
