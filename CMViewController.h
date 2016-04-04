//
//  CMViewController.h
//  ColorModel
//
//  Created by Andres Socha on 7/18/14.
//  Copyright (c) 2014 AndreSocha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CMColor.h"
#import "CMColorView.h"

@interface CMViewController : UIViewController
@property (strong, nonatomic)CMColor *colorModel;
@property(weak, nonatomic) IBOutlet CMColorView *colorView;
@property (weak, nonatomic) IBOutlet UILabel *hueLabel;
@property (weak, nonatomic) IBOutlet UILabel *saturationLabel;
@property (weak, nonatomic) IBOutlet UILabel *brightnessLabel;
@property (weak,nonatomic)IBOutlet UILabel *webLabel;
@property (weak,nonatomic)IBOutlet UISlider *hueSlider;
@property (weak,nonatomic)IBOutlet UISlider *saturationSlider;
@property (weak,nonatomic)IBOutlet UISlider *brightnessSlider;


-(IBAction)chageHue:(UISlider*)sender;
-(IBAction)chageSaturation:(UISlider*)sender;
-(IBAction)chageBrightness:(UISlider*)sender;

@end
