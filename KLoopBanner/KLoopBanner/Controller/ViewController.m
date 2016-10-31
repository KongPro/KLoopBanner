//
//  ViewController.m
//  KLoopBanner
//
//  Created by 孔繁武 on 2016/10/31.
//  Copyright © 2016年 孔繁武. All rights reserved.
//

#import "ViewController.h"
#import "KBannerViewFollow.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     图片数组，可以自己拼接，也可以放在plist里面。
     */
    NSArray *imageArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Images.plist" ofType:nil]];
    /**
     创建bannerView
     */
    KBannerViewFollow *bannerFollowView = [KBannerViewFollow loopViewTypeFollowWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) images:imageArray];
    
    [self.view addSubview:bannerFollowView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
