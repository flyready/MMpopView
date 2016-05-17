//
//  HGDCover.h
//  knkbfjbe
//
//  Created by 张明 on 16/5/16.
//  Copyright © 2016年 张明. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HGDCover;

@protocol  HGDCoverDelegate<NSObject>

- (void)hgdcover:(HGDCover *)cover;

@end

@interface HGDCover : UIView

@property (nonatomic,weak) id<HGDCoverDelegate>delegate;
/**
 *展示灰色蒙版
 */
+ (instancetype)show;


@end
