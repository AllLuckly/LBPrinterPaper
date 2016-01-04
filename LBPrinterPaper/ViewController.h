//
//  ViewController.h
//  LBPrinterPaper
//  作者博客：http://allluckly.cn
//  Created by yscf on 16/1/4.
//  Copyright © 2016年 Bison. All rights reserved.
//

#import <UIKit/UIKit.h>

#define LBSCREEN_WIDTH    ([[UIScreen mainScreen] bounds].size.width)

#define LBSCREEN_HEIGHT   ([[UIScreen mainScreen] bounds].size.height)
@interface ViewController : UIViewController
{
    UIView *backView;
    UITextField *Name_textfield;
    UITextField *Pass_textfield;
    UIButton *login_btn;
    UIButton *pass_btn;
}
@end

