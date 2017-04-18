#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* Switch Database REST API
* Switch API is the primary endpoint of data sevices and Switch DB's platform. You can do adding, editing, deleting or listing data works to your database with query operations by using this low-level API based on HTTP.
*
* OpenAPI spec version: 1.2.1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/




@protocol SWGAddResponse
@end

@interface SWGAddResponse : SWGObject


@property(nonatomic) NSNumber* responseTime;

@property(nonatomic) NSString* response;

@property(nonatomic) NSString* listItemId;

@end
