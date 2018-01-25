//
//  KKTabBarController.h
//  仿淘宝Tarbar
//
//  Created by huangjianqiang on 2018/1/25.
//  Copyright © 2018年 huangjianqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KKTabBarController : UIViewController
@property (nonatomic, strong) NSArray *itemTitles;
@property (nonatomic, strong) NSArray *itemNormalImages;
@property (nonatomic, strong) NSArray *itemSelectImages;
@property (nonatomic, strong) NSArray *viewControllers;
@end
