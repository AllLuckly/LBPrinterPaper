//
//  ViewController.m
//  LBPrinterPaper
//  作者博客：http://allluckly.cn
//  Created by yscf on 16/1/4.
//  Copyright © 2016年 Bison. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUI];
    
}
- (void)createUI{
    UIImageView *backimageView=[[UIImageView alloc]init];
    backimageView.image =[UIImage imageNamed:@"1.png"];
    backimageView.frame = CGRectMake(50, 100, LBSCREEN_WIDTH-100, 30);
    [self.view addSubview:backimageView];
    backView = [[UIView alloc]initWithFrame:CGRectMake(60, 115, LBSCREEN_WIDTH-120, 0)];
    backView.layer.cornerRadius = 5;
    backView.backgroundColor = [UIColor whiteColor];
    backView.layer.borderWidth = 1;
    backView.layer.borderColor = [UIColor blackColor].CGColor;
    backView.clipsToBounds = YES;
    [self.view addSubview:backView];
    login_btn = [UIButton buttonWithType:UIButtonTypeCustom];
    login_btn.frame = CGRectMake(10, 120, LBSCREEN_WIDTH-140, 35);
    [login_btn setTitle:@"登陆" forState:UIControlStateNormal];
    login_btn.backgroundColor = [UIColor lightGrayColor];
    login_btn.layer.cornerRadius = 5;
    login_btn.layer.borderWidth = 1;
    login_btn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [login_btn addTarget:self action:@selector(passwordClick:) forControlEvents:UIControlEventTouchUpInside];
    login_btn.clipsToBounds = YES;
    pass_btn = [UIButton buttonWithType:UIButtonTypeCustom];
    pass_btn.frame = CGRectMake(10, 165, LBSCREEN_WIDTH-140, 35);
    [pass_btn setTitle:@"注册" forState:UIControlStateNormal];
    pass_btn.backgroundColor = [UIColor redColor];
    [pass_btn addTarget:self action:@selector(passwordClick:) forControlEvents:UIControlEventTouchUpInside];
    pass_btn.layer.cornerRadius = 5;
    pass_btn.layer.borderWidth = 1;
    pass_btn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    pass_btn.clipsToBounds = YES;
    Name_textfield = [[UITextField alloc]initWithFrame:CGRectMake(10, 20, LBSCREEN_WIDTH-140, 40)];
    Name_textfield.placeholder = @"帐号";
    Name_textfield.borderStyle = UITextBorderStyleRoundedRect;
    Pass_textfield = [[UITextField alloc]initWithFrame:CGRectMake(10, 70, LBSCREEN_WIDTH-140, 40)];
    Pass_textfield.borderStyle = UITextBorderStyleRoundedRect;
    Pass_textfield.placeholder = @"密码";
    //2秒后开始一个持续一分钟的动画
    [UIView animateWithDuration:1 delay:2 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        backView.frame=CGRectMake(60, 115, LBSCREEN_WIDTH-120, 210);
    } completion:^(BOOL finished) {
        NSLog(@"动画完成");
        [backView addSubview:Name_textfield];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [backView addSubview:Pass_textfield];
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [backView addSubview:login_btn];
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [backView addSubview:pass_btn];
                });
            });
        });
        
    }];
    
}

- (void)passwordClick:(UIButton *)sender{
    NSLog(@"hhhhh....");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
