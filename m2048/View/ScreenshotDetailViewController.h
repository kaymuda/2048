//
//  ScreenshotDetailViewController.h
//  m2048
//
//  Created by Kelo Akalamudo on 11/3/16.
//  Copyright © 2016 Danqing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScreenshotDetailViewController : UIViewController


@property (nonatomic, copy) UIImage *screenshot;

-(void)configureVCWithImage:(UIImage*)image;

@end
