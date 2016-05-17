//
//  ViewController.m
//  knkbfjbe
//
//  Created by 张明 on 16/5/16.
//  Copyright © 2016年 张明. All rights reserved.
//

#import "ViewController.h"
#import "HGDCover.h"
#import "TestViewController.h"
#import "MMPopView.h"

@interface ViewController ()<HGDCoverDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)popView:(id)sender {

    //创建蒙版
    HGDCover *cover = [HGDCover show];
    
    cover.delegate = self;
    

    TestViewController *test = [[TestViewController alloc]initWithStyle:UITableViewStylePlain];
    
    //创建pop弹出尺寸和内容
    MMPopView *popView = [MMPopView showInRect:CGRectMake(50, 100, 200, 200)];
    
    popView.contentView = test.view;
    
    [self addChildViewController:test];

}

#pragma mark-HGDCover的delegate方法
- (void)hgdcover:(HGDCover *)cover
{
    
    [MMPopView hidden];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
