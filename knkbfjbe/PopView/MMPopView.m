//
//  MMPopView.m
//  knkbfjbe
//
//  Created by 张明 on 16/5/17.
//  Copyright © 2016年 张明. All rights reserved.
//

#define MMKeyWindow [UIApplication sharedApplication].keyWindow
#import "MMPopView.h"

@implementation MMPopView

+ (instancetype)showInRect:(CGRect)rect
{
    MMPopView *pop = [[MMPopView alloc]initWithFrame:rect];
    
    pop.userInteractionEnabled = YES;
    
    [MMKeyWindow addSubview:pop];
    
    return pop;
}


+ (void)hidden
{
    for (UIView *view in MMKeyWindow.subviews) {
        if ([view isKindOfClass:self]) {
            [view removeFromSuperview];
        }
    }
    
}
//设置将要显示的内容视图
- (void)setContentView:(UIView *)contentView
{
    [_contentView removeFromSuperview];
    
    _contentView = contentView;
    
    _contentView.backgroundColor = [UIColor clearColor];
    
    [self addSubview:_contentView];
    
}

#define margin 5
#define y 10
#define Width (self.frame.size.width - 10)
#define Height (self.frame.size.height - 10)

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //计算内容视图的尺寸
    
    _contentView.frame = CGRectMake(margin, y, Width, Height);
  
}


@end
