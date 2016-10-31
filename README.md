# KLoopBanner
玩了玩各大类心的app，看了许多轮播效果，自己实现一下无限轮播的各种轮播切换效果。喜欢的可以下载看看

## 使用提示 
  您只需要一行代码，即可。前提是，您必须要拼接一个图片数组，或者跟我一样，创建一个plist文件。
  
    NSArray *imageArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Images.plist" ofType:nil]];
    
## 代码示例

     KBannerViewFollow *bannerFollowView = [KBannerViewFollow loopViewTypeFollowWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) images:imageArray];
  ···说明类方法创建bannerView：
      入参：
        1.frame：banner的k宽高坐标
        2.images：是一个图片数组，数组中每一项是图片的名字。（后期会更新成url，从网络下载）。 
 
