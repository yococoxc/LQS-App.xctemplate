//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

#import "MainTabBarController.h"
#import "MainNavigationController.h"




@interface MainTabBarController ()

@property(nonatomic,strong) MainNavigationController* homeNC;
@property(nonatomic,strong) MainNavigationController* scheduleNC;
@property(nonatomic,strong) MainNavigationController* leaderboardNC;
@property(nonatomic,strong) MainNavigationController* mineNC;

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    [self setupWithChlidViewControllers];
}

#pragma mark -
- (void) setupWithChlidViewControllers {
    NSMutableArray *childVCs = [NSMutableArray array];
    [childVCs addObject:self.homeNC];
    [childVCs addObject:self.scheduleNC];
    [childVCs addObject:self.leaderboardNC];
    [childVCs addObject:self.mineNC];
    self.viewControllers = childVCs;
}

#pragma mark - 懒加载
//- (MainNavigationController *) homeNC {
//    if (_homeNC == nil) {
//        YCHomeVC *vc = [YCHomeVC new];
//        LQSBoxController *boxVC = [MainBoxController createWithBody:vc];
//        MainNavigationController *navC = [MainNavigationController createWithRootController:boxVC title:@"首页" titleColor:nil selectedTitleColor:CommonTabBarTitleSelectedColor image:@"HomeIcon.png" selectedImage:@"HomeActiveIcon.png"];
//        _homeNC = navC;
//    }
//    return _homeNC;
//}
//- (MainNavigationController *) scheduleNC {
//    if (_scheduleNC == nil) {
//        YCScheduleVC *vc = [YCScheduleVC new];
//        LQSBoxController *boxVC = [MainBoxController createWithBody:vc];
//        MainNavigationController *navC = [MainNavigationController createWithRootController:boxVC title:@"赛程" titleColor:nil selectedTitleColor:CommonTabBarTitleSelectedColor image:@"ScheduleIcon.png" selectedImage:@"ScheduleActiveIcon.png"];
//        _scheduleNC = navC;
//    }
//    return _scheduleNC;
//}
//- (MainNavigationController *) leaderboardNC {
//    if (_leaderboardNC == nil) {
//        YCLeaderboardVC *vc = [YCLeaderboardVC new];
//        LQSBoxController *boxVC = [MainBoxController createWithBody:vc];
//        MainNavigationController *navC = [MainNavigationController createWithRootController:boxVC title:@"排行榜" titleColor:nil selectedTitleColor:CommonTabBarTitleSelectedColor image:@"LeaderboardIcon.png" selectedImage:@"LeaderboardActiveIcon.png"];
//        _leaderboardNC = navC;
//    }
//    return _leaderboardNC;
//}
//- (MainNavigationController *) mineNC {
//    if (_mineNC == nil) {
//        YCMineVC *vc = [YCMineVC new];
//        LQSBoxController *boxVC = [MainBoxController createWithBody:vc];
//        MainNavigationController *navC = [MainNavigationController createWithRootController:boxVC title:@"我的" titleColor:nil selectedTitleColor:CommonTabBarTitleSelectedColor image:@"MineIcon.png" selectedImage:@"MineActiveIcon.png"];
//        _mineNC = navC;
//    }
//    return _mineNC;
//}

@end
