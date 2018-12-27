//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

#import "MainBoxController.h"

@interface MainBoxController ()

@end

@implementation MainBoxController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (self.viewBackgroundColor) {
        self.view.lqs_backgroundColor = self.viewBackgroundColor;
        self.boxView.backgroundColor = [UIColor clearColor];
    }
}


- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
