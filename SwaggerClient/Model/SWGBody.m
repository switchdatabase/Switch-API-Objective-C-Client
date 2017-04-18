#import "SWGBody.h"

@implementation SWGBody

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"list": @"list", @"count": @"count", @"page": @"page", @"whereType": @"whereType", @"where": @"where", @"order": @"order" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"list", @"count", @"page", @"whereType", @"where", @"order"];
  return [optionalProperties containsObject:propertyName];
}

@end
