//
//  SConentView.m
//  srollView_text
//
//  Created by 孔繁武 on 16/8/23.
//  Copyright © 2016年 孔繁武. All rights reserved.
//

#import "SConentView.h"

@implementation SConentView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self == [super initWithFrame:frame]) {
        [self setContentView];
    }
    return self;
}

- (void)setContentView{
    self.clipsToBounds = YES;
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    self.imgView = imageView;
    [self addSubview:imageView];
}

/**
 计算每个图片先对于屏幕中心view的偏移
 */
- (void)imageOffset{
    CGRect rect = [self convertRect:self.bounds toView:nil];
    CGFloat centerX = CGRectGetMidX(rect);
    CGFloat windowCenterX = self.window.center.x;
    CGFloat offset =  centerX - windowCenterX;
    CGFloat scale = 0.8;    // 平移因子
    self.imgView.transform= CGAffineTransformMakeTranslation(-offset * scale, 0);
}

@end
