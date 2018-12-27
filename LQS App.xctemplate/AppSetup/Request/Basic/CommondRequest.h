//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

#import <UIKit/UIKit.h>
#import "RequestModel.h"

@interface CommondRequest : NSObject

+ (void) postWithURL:(NSString *)url
               param:(id)param
               start:(void (^)(void))start
             success:(void (^)(RequestModel *model))success
             failure:(void (^)(NSError *error))failure
                 end:(void (^)(void))end;

@end
