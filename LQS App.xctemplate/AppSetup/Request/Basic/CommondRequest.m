//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

#import "CommondRequest.h"
#import <LQSKit/LQSKit.h>
#import "MJExtension.h"

@implementation CommondRequest

+ (void) postWithURL:(NSString *)url
               param:(id)param
               start:(void (^)(void))start
             success:(void (^)(RequestModel *model))success
             failure:(void (^)(NSError *error))failure
                 end:(void (^)(void))end {
    
    LQSRequest* request = [LQSRequest new];
    request.URLString = url;
    [request setHTTPMethod:@"POST"];
    [request setParameter:param];
    [request setupStartBlock:^(LQSRequest *request) {
        if (start) {
            start();
        }
    } endBlock:^(LQSRequest *request) {
        if (end) {
            end();
        }
    }];
    [request setupSuccessBlock:^(LQSRequest *request, LQSRequestResult *result) {
        if (success) {
            RequestModel *model = [RequestModel mj_objectWithKeyValues:result.json];
            
            //主线程
            dispatch_async(dispatch_get_main_queue(), ^{
                success(model);
            });
        }
    } failureBlock:^(LQSRequest *request, LQSRequestResult *result) {
        if (failure) {
            failure(result.error);
        }
    }];
    
    [request request];
}

@end
