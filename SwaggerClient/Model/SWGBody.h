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


#import "SWGListOrder.h"
#import "SWGWhereItem.h"


@protocol SWGBody
@end

@interface SWGBody : SWGObject

/* List name. [optional]
 */
@property(nonatomic) NSString* list;
/* Item count. [optional]
 */
@property(nonatomic) NSNumber* count;
/* Page number. [optional]
 */
@property(nonatomic) NSNumber* page;
/* Optional enumerator. You can assign the mode of implementation of where criterions by using AND and OR types under whereType parameter. [optional]
 */
@property(nonatomic) NSString* whereType;

@property(nonatomic) NSArray<SWGWhereItem>* where;

@property(nonatomic) SWGListOrder* order;

@end
