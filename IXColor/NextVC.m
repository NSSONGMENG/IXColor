//
//  NextVC.m
//  IXColor
//
//  Created by Seven on 2018/4/18.
//  Copyright © 2018年 Seven. All rights reserved.
//

#import "NextVC.h"

@interface NextVC ()
@property (nonatomic, strong) UISwitch  * sw;
@property (nonatomic, strong) UILabel   * swLab;
@property (nonatomic, strong) UILabel   * demoLab;
@property (nonatomic, strong) UISwitch  * switchBtn;
@property (nonatomic, strong) UIButton  * btn;
@property (nonatomic, strong) UISlider  * slider;
@property (nonatomic, strong) UIProgressView    * progressV;
@property (nonatomic, strong) UIImageView       * imageV;
@property (nonatomic, strong) UITextField   * textF;
@property (nonatomic, strong) UITextView    * textV;
@end

@implementation NextVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = _titleStr;
    self.view.backgroundColorPicker = IXColorPickerWithRGB(kHexWhite,kHexBlack);
    
    
    [self createSubview];
}

- (void)createSubview
{
    [self.view addSubview:self.sw];
    [self.view addSubview:self.swLab];
    
    [self.view addSubview:self.demoLab];
    [self.view addSubview:self.switchBtn];
    [self.view addSubview:self.btn];
    [self.view addSubview:self.slider];
    [self.view addSubview:self.imageV];
}

- (void)swAction:(UISwitch *)sw
{
    if (sw.isOn) {
        [[IXColorMgr defaultMgr] changeColorVersionWithIndex:1];
        _swLab.text = @"black version";
    } else {
        [[IXColorMgr defaultMgr] changeColorVersionWithIndex:0];
        _swLab.text = @"white version";
    }
}

#pragma mark -
#pragma mark - getter

- (UISwitch *)sw
{
    if (!_sw) {
        _sw = [[UISwitch alloc] initWithFrame:CGRectMake(25, 10, 100, 40)];
        _sw.tintColor = kGray_text;
        [_sw addTarget:self action:@selector(swAction:) forControlEvents:UIControlEventValueChanged];
        [_sw setOn:[[IXColorMgr defaultMgr].curVersion isEqualToString:@"black"]];
    }
    return _sw;
}

- (UILabel *)swLab
{
    if (!_swLab) {
        _swLab = [[UILabel alloc] initWithFrame:CGRectMake(100, 15, 150, 20)];
        _swLab.textColorPicker = IXColorPickerWithRGB(kHexBlack,kHexWhite);
    }
    return _swLab;
}

- (UILabel *)demoLab
{
    if (!_demoLab) {
        _demoLab = [[UILabel alloc] initWithFrame:CGRectMake(25, 80, 150, 30)];
        _demoLab.textColorPicker = IXColorPickerWithRGB(kHexBlack,kHexWhite);
        _demoLab.text = @"Demo";
    }
    return _demoLab;
}

- (UISwitch *)switchBtn
{
    if (!_switchBtn) {
        _switchBtn = [[UISwitch alloc] initWithFrame:CGRectMake(25, 130, 100, 40)];
        _switchBtn.onTintColorPicker = IXColorPickerWithRGB(kHexYello,kHexOrange);
        _switchBtn.tintColorPicker = IXColorPickerWithRGB(kHexRed,kHexGreen);
    }
    return _switchBtn;
}

- (UIButton *)btn
{
    if (!_btn) {
        _btn = [[UIButton alloc] initWithFrame:CGRectMake(25, 190, 150, 40)];
        _btn.layer.cornerRadius = 3.f;
        [_btn setTitle:@"UIButtin" forState:UIControlStateNormal];
        [_btn setTitleColorPicker:IXColorPickerWithRGB(kHexBlack,kHexWhite) forState:UIControlStateNormal];
        [_btn setBackgroundColorPicker:IXColorPickerWithRGB(kHexRed,kHexGreen)];
    }
    return _btn;
}

- (UISlider *)slider
{
    if (!_slider) {
        _slider = [[UISlider alloc] initWithFrame:CGRectMake(25, 250, kScreenWidth - 50, 20)];
        _slider.minimumValue = 0.f;
        _slider.maximumValue = 100.f;
        _slider.minimumTrackTintColorPicker = IXColorPickerWithRGB(kHexGray_text,kHexWhite);
        _slider.maximumTrackTintColorPicker = IXColorPickerWithRGB(kHexRed,kHexGreen);
        _slider.thumbTintColorPicker = IXColorPickerWithRGB(kHexYello,kHexRed);
    }
    return _slider;
}


- (UIImageView *)imageV
{
    if (!_imageV) {
        _imageV = [[UIImageView alloc] initWithFrame:CGRectMake(25, 290, 97, 84)];
        UIImage * img1 = [UIImage imageNamed:@"m_c_usd"];
        UIImage * img2 = [UIImage imageNamed:@"m_c_usd_sl"];
        _imageV.imagePicker = IXImagePickerWithImages(img1,img2);
    }
    return _imageV;
}

@end
