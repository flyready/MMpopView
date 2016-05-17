//
//  MMPopView.h
//  knkbfjbe
//
//  Created by 张明 on 16/5/17.
//  Copyright © 2016年 张明. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMPopView : UIView

/**
 *  设置你要展示的内容视图
 */
@property (nonatomic,strong)UIView *contentView;

/**
 * 展示视图
 */
+ (instancetype)showInRect:(CGRect)rect;

/**
 *  隐藏视图
 */
+ (void)hidden;

@end
