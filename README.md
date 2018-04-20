# IXColor

本框架旨在以一种对系统影响极小的方式，使App支持多种皮肤模式，例如经常遇到的夜间模式等。
只需要设置对应模式的颜色和图片，即可实现一键热切换。

## 使用
pod 'IXColor'

-------------

step 1:
<pre><code>
    //导入头文件
    #import "IXColorHeader.h"
</code></pre>

step 2:
<pre><code>
    //设置app所支持的颜色模式
    [IXColorMgr defaultMgr].versions = @[@"white",@"black"];
    [IXColorMgr defaultMgr].curVersion = @"white";
</code></pre>

step 3:
<pre><code>
    //针对不同的模式设置控件颜色和图片
    eg.
    //UILabel
    label.textColorPicker = IXColorPickerWithRGB(0x1d1d1d,0xe2e2e2);
    
    //UISwitch
    switch.onTintColorPicker = IXColorPickerWithRGB(0xffe400,0xffac32);
    switch.tintColorPicker = IXColorPickerWithRGB(0xe64a4a,0x28ac8e);
    
    //UIView
    view.backgroundColorPicker = IXColorPickerWithRGB(0xe2e2e2,0x1d1d1d);
    
    //UINavigationBar
    navigationBar.barTintColorPicker = IXColorPickerWithRGB(0xe2e2e2,0x1d1d1d);
    
    //UIImageView
    UIImage * img1 = [UIImage imageNamed:@"m_c_usd"];
    UIImage * img2 = [UIImage imageNamed:@"m_c_usd_sl"];
    imageView.imagePicker = IXImagePickerWithImages(img1,img2);
</code></pre>
