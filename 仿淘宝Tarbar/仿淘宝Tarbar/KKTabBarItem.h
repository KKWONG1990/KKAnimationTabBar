//
//  KKTabBarItem.h
//  仿淘宝Tarbar
//
//  Created by huangjianqiang on 2018/1/25.
//  Copyright © 2018年 huangjianqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KKTabBarItem : UIButton


/**
 tabbaritem初始化方法

 @param title 标题
 @param normalImage 普通模式图片
 @param selectImage 选中模式图片
 @param tag 下标
 @return 对象
 */
-(instancetype)initWithTitle:(NSString *)title normalImage:(UIImage *)normalImage selectImage:(UIImage *)selectImage tag:(NSInteger )tag;


@end
