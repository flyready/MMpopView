//
//  HGDCover.m
//  knkbfjbe
//
//  Created by 张明 on 16/5/16.
//  Copyright © 2016年 张明. All rights reserved.
//

#import "HGDCover.h"
#define HGDKeyWindow [UIApplication sharedApplication].keyWindow

@implementation HGDCover

+ (instancetype)show
{
    
    HGDCover *cover = [[HGDCover alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    cover.backgroundColor = [UIColor blackColor];
    cover.alpha = 0.5;
    
    [HGDKeyWindow addSubview:cover];
    
    return cover;
    
}
//当点击灰色蒙版时通知代理做事情
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self removeFromSuperview];
    

    if ([self.delegate respondsToSelector:@selector(hgdcover:)]) {
        [self.delegate hgdcover:self];
    }
    
}
/**
 *  隐藏灰色蒙版
 */
+ (void)hidden
{
    for (UIView *view in HGDKeyWindow.subviews) {
        if ([view isKindOfClass:self]) {
            [view removeFromSuperview];
            
        }
    }
    
}


@end
