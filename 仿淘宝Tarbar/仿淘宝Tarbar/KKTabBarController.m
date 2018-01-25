//
//  KKTabBarController.m
//  仿淘宝Tarbar
//
//  Created by huangjianqiang on 2018/1/25.
//  Copyright © 2018年 huangjianqiang. All rights reserved.
//

#import "KKTabBarController.h"
#import "KKTabBarItem.h"
#import "KKTabBar.h"
@interface KKTabBarController ()<KKTabBarDelegate>
@property (nonatomic, strong) KKTabBar *tabBar;
@end

@implementation KKTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self setTabBar];
    [self addChildViewController];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(hideTabBar) name:@"hide" object:nil];
}

-(void)setTabBar
{
    self.tabBar = [[KKTabBar alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height - 49, self.view.bounds.size.width, 49)];
    self.tabBar.delegate = self;
    [self.view addSubview:self.tabBar];
    self.tabBar.items = [self setTabBarItems];
}

-(NSMutableArray *)setTabBarItems
{
    NSMutableArray *items = [NSMutableArray arrayWithCapacity:self.itemTitles.count];
    for (int i = 0; i < self.itemTitles.count; i ++) {
        KKTabBarItem *item = [[KKTabBarItem alloc]initWithTitle:self.itemTitles[i] normalImage:[UIImage imageNamed:self.itemNormalImages[i]] selectImage:[UIImage imageNamed:self.itemSelectImages[i]] tag:i];
        [items addObject:item];
    }
    return items;
}

-(void)addChildViewController
{
    for (int i = 0; i < self.viewControllers.count; i ++) {
        Class cl = NSClassFromString(self.viewControllers[i]);
        UIViewController *vc = [[cl alloc]init];
        vc.title = self.itemTitles[i];
        UINavigationController *rootvc = [[UINavigationController alloc]initWithRootViewController:vc];
        [self addChildViewController:rootvc];
        if (i == 0) {
            [self.view addSubview:rootvc.view];
        }
    }
    [self.view bringSubviewToFront:self.tabBar];
}

-(void)tabBardidSelectItem:(KKTabBarItem *)item
{
    [self.view.subviews.firstObject removeFromSuperview];
    UIViewController *vc = self.childViewControllers[item.tag];
    [self.view addSubview:vc.view];
    [self.view bringSubviewToFront:self.tabBar];
}

-(void)hideTabBar
{
    self.tabBar.hidden = YES;
}



@end
