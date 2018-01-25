//
//  KKTabBarItem.m
//  仿淘宝Tarbar
//
//  Created by huangjianqiang on 2018/1/25.
//  Copyright © 2018年 huangjianqiang. All rights reserved.
//

#import "KKTabBarItem.h"

@implementation KKTabBarItem

-(instancetype)initWithTitle:(NSString *)title normalImage:(UIImage *)normalImage selectImage:(UIImage *)selectImage tag:(NSInteger)tag
{
    self = [super init];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        [self tabBarItemWithTitle:title normalImage:normalImage selectImage:selectImage tag:tag];
    }
    return self;
}

-(void)tabBarItemWithTitle:(NSString *)title normalImage:(UIImage *)normalImage selectImage:(UIImage *)selectImage tag:(NSInteger)tag
{
    [self setTag:tag];
    [self setTitle:title forState:UIControlStateNormal];
    [self setImage:normalImage forState:UIControlStateNormal];
    [self setImage:selectImage forState:UIControlStateSelected];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor lightGrayColor] forState:UIControlStateSelected];
    self.titleLabel.font = [UIFont systemFontOfSize:13];
}
@end
