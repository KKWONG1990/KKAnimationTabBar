//
//  ContactViewController.m
//  仿淘宝Tarbar
//
//  Created by huangjianqiang on 2018/1/25.
//  Copyright © 2018年 huangjianqiang. All rights reserved.
//

#import "ContactViewController.h"
#import "MessageViewController.h"
@interface ContactViewController ()
@property (nonatomic, strong) UIButton *btn;
@end

@implementation ContactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btn.frame = CGRectMake(100, 200, 50, 50);
    [self.btn setImage:[UIImage imageNamed:@"me"] forState:UIControlStateNormal];
    [self.btn setTitle:@"me" forState:UIControlStateNormal];
    self.btn.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.btn];
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    MessageViewController *vc = [[MessageViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
