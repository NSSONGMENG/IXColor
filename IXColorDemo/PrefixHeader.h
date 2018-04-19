//
//  PrefixHeader.h
//  IXColor
//
//  Created by Seven on 2018/4/18.
//  Copyright © 2018年 Seven. All rights reserved.
//

#ifndef PrefixHeader_h
#define PrefixHeader_h

#import "IXColorHeader.h"


#define kNavbarHeight   (44 + [[UIApplication sharedApplication] statusBarFrame].size.height)
#define kTabbarHeight   (49 + kBtomMargin)
#define kScreenBound    [[UIScreen mainScreen] bounds]
#define kScreenWidth    [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight   [[UIScreen mainScreen] bounds].size.height
#define kLineHeight     1/[[UIScreen mainScreen] scale]

/*  *********** Colors  *************  */
#define DKRGBs(wHexColor,dHexColor)    DKColorPickerWithRGB(wHexColor,dHexColor)
#define DKColors(wHexColor,dHexColor)  DKColorPickerWithColors(wHexColor,dHexColor)

#define RGB(r, g, b) \
[UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]

#define HexRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define HexRGBA(rgbValue,alp) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:alp]

/** color */
#define kRedPicker      IXColorPickerWithRGB(kHexRed,kHexGreen)
#define kGreenPicker    IXColorPickerWithRGB(kHexGreen,kHexRed)
#define kWhitePicker    IXColorPickerWithRGB(kHexWhite,kHexWhite)
#define kGrayLinePicker IXColorPickerWithRGB(kHexGray_line,kHexGray_line)
#define kGrayTextPicker IXColorPickerWithRGB(kHexGray_text,kHexGray_text)

#define kRed    HexRGB(kHexRed)     //红
#define kGreen  HexRGB(kHexGreen)   //绿
#define kGray_text      HexRGB(kHexGray_text)   //灰
#define kGray_text_d    HexRGB(kHexGray_text_d) //灰+
#define kGray_line      HexRGB(kHexGray_line)   //灰++
#define kGray_line_d    HexRGB(kHexGray_line_d) //灰+++
#define kYello  HexRGB(kHexYello)   //黄
#define kYello_d HexRGB(kHexYello_d)//黄 黑
#define kBlue   HexRGB(kHexBlue)    //蓝
#define kPurple HexRGB(kHexPurple)  //紫
#define kOrange HexRGB(kHexOrange)  //橘
#define kBlack  HexRGB(kHexBlack)   //黑
#define kDark   HexRGB(kHexDark)    //黑+
#define kWhite  HexRGB(kHexWhite)   //白
#define kPlaceHolderColor   kGray_line   //输入框占位符
//hex
#define kHexRed    0xe64a4a     //红
#define kHexGreen  0x28ac8e     //绿
#define kHexGray_text   0x808080    //灰
#define kHexGray_text_d 0x5a5a5a   //灰+
#define kHexGray_line   0x323232   //灰++
#define kHexGray_line_d 0x282828   //灰+++
#define kHexYello   0xffe400   //黄
#define kHexYello_d 0xffd200   //黄 黑
#define kHexBlue    0x1266ff   //蓝
#define kHexPurple  0xbf80ff   //紫
#define kHexOrange  0xffac32   //橘
#define kHexBlack   0x1d1d1d   //黑
#define kHexDark    0x171717   //黑+
#define kHexWhite   0xe2e2e2   //白


#endif /* PrefixHeader_h */
