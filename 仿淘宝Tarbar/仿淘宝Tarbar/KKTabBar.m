//
//  KKTabBar.m
//  仿淘宝Tarbar
//
//  Created by huangjianqiang on 2018/1/25.
//  Copyright © 2018年 huangjianqiang. All rights reserved.
//

#import "KKTabBar.h"
@interface KKTabBar()
@property (nonatomic, weak) UIView *line;
@property (nonatomic, strong) KKTabBarItem *selectItem;
@end
@implementation KKTabBar

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        [self tabBar];
    }
    return self;
}

-(void)tabBar
{
    UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, 1)];
    [line setBackgroundColor:[UIColor lightGrayColor]];
    [self addSubview:line];
    self.line = line;
}

-(void)setBackgroundImage:(UIImage *)backgroundImage
{
    UIImageView *backgroundImagevView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    backgroundImagevView.image = backgroundImage;
    [self addSubview:backgroundImagevView];
}

-(void)setItems:(NSMutableArray *)items
{
    CGFloat itemWidth = self.frame.size.width/items.count;
    CGFloat itemHeight = self.frame.size.height;
    
    for (int i = 0 ; i < items.count; i ++) {
        KKTabBarItem *item = items[i];
        if (i == 0) {
            [item setSelected:YES];
            self.selectItem = item;
        }
        item.frame = CGRectMake(i*itemWidth, 0, itemWidth, itemHeight);
        [item addTarget:self action:@selector(itemSelect:) forControlEvents:UIControlEventTouchUpInside];
        //设置edgeinsets属性要在设置fram后
        [item setContentHorizontalAlignment:UIControlContentHorizontalAlignmentCenter];
        [item setTitleEdgeInsets:UIEdgeInsetsMake(5 ,-item.imageView.frame.size.width, -item.imageView.frame.size.height,0.0)];
        [item setImageEdgeInsets:UIEdgeInsetsMake(-item.titleLabel.intrinsicContentSize.height+5, 0.0,0, -item.titleLabel.intrinsicContentSize.width)];
        [self addSubview:item];
    }
}

-(void)itemSelect:(KKTabBarItem *)item
{
    [self.selectItem setSelected:NO];
    [item setSelected:YES];
    self.selectItem = item;
    //item 缩放
    [UIView animateWithDuration:0.15 animations:^{
        item.transform = CGAffineTransformMakeScale(0.75, 0.75);
    } completion:^(BOOL finished) {
        item.transform = CGAffineTransformMakeScale(1.0, 1.0);
    }];
    if (self.delegate && [self.delegate respondsToSelector:@selector(tabBardidSelectItem:)]) {
        [self.delegate tabBardidSelectItem:item];
        
    }
}


@end
