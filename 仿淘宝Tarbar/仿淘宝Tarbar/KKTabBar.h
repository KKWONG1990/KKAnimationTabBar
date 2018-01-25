//
//  KKTabBar.h
//  仿淘宝Tarbar
//
//  Created by huangjianqiang on 2018/1/25.
//  Copyright © 2018年 huangjianqiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KKTabBarItem.h"
@protocol KKTabBarDelegate <NSObject>
- (void)tabBardidSelectItem:(KKTabBarItem *)item;
@end
@interface KKTabBar : UIView
/**
 背景图片
 */
@property (nonatomic, strong) UIImage *backgroundImage;

/**
 tabBarItems 
 */
@property (nonatomic, strong) NSMutableArray *items;

/**
 代理
 */
@property (nonatomic, assign) id<KKTabBarDelegate> delegate;
@end
