//
//  KLoopBannerView.m
//  srollView_text
//
//  Created by 孔繁武 on 2016/10/31.
//  Copyright © 2016年 孔繁武. All rights reserved.
//

#import "KBannerViewFollow.h"
#import "SConentView.h"

@interface KBannerViewFollow () <UIScrollViewDelegate>

@property (nonatomic,strong) UIScrollView * scrollView;
@property (nonatomic,strong) NSArray * imageArr;

@end

@implementation KBannerViewFollow

- (void)setUpBannerViewWithImageArr:(NSArray *)imageArray{
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    scrollView.delegate = self;
    CGFloat contentWidth = imageArray.count ? self.frame.size.width * imageArray.count : self.frame.size.width;
    scrollView.contentSize = CGSizeMake(contentWidth, 0);
    scrollView.pagingEnabled = YES;
    self.scrollView = scrollView;
    
    // 创建多个图片view
    for (int i = 0; i < 10; i++) {
        SConentView *sContentView = [[SConentView alloc] initWithFrame:CGRectMake(i * scrollView.frame.size.width, 0, scrollView.frame.size.width, scrollView.frame.size.height)];
        if (!imageArray.count) {
            sContentView.backgroundColor = [UIColor lightGrayColor];
        }else{
            sContentView.imgView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",imageArray[i]]];
        }
        [scrollView addSubview:sContentView];
    }
    
    [self addSubview:scrollView];
}

#pragma mark -- ScrollViewDidScroll
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    if ([scrollView isEqual:self.scrollView]) {
        for (SConentView *contentView in scrollView.subviews) {
            if ([contentView respondsToSelector:@selector(imageOffset)] ) {
                [contentView imageOffset];
            }
        }
    }
}

#pragma mark -- Create Banner
+ (KBannerViewFollow *)loopViewTypeFollowWithFrame:(CGRect)rect images:(NSArray *)imageArray{
    KBannerViewFollow *loopBannerFollowView = [[KBannerViewFollow alloc] initWithFrame:rect];
    [loopBannerFollowView setUpBannerViewWithImageArr:imageArray];
    return loopBannerFollowView;
}

@end
