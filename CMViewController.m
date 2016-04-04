//
//  CMViewController.m
//  ColorModel
//
//  Created by Andres Socha on 7/18/14.
//  Copyright (c) 2014 AndreSocha. All rights reserved.
//

#import "CMViewController.h"

@interface CMViewController ()
//-(void)updateColor;
@end

@implementation CMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.colorModel = [CMColor new];
    self.colorView.colorModel = self.colorModel;
    [_colorModel addObserver:self forKeyPath:@"hue" options:0 context:NULL];
    [_colorModel addObserver:self forKeyPath:@"saturation" options:0 context:NULL];
    [_colorModel addObserver:self forKeyPath:@"brightness" options:0 context:NULL];
    [_colorModel addObserver:self forKeyPath:@"color" options:0 context:NULL];
    _colorModel.hue=60;
    _colorModel.saturation=50;
    _colorModel.brightness=100;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)chageHue:(UISlider*)sender
{
    self.colorModel.hue = sender.value;
  //  [self updateColor];
}
-(IBAction)chageSaturation:(UISlider*)sender
{
    self.colorModel.saturation = sender.value;
 //   [self updateColor];
}
-(IBAction)chageBrightness:(UISlider*)sender
{
    self.colorModel.brightness = sender.value;
 //   [self updateColor];
}
/*
-(void)updateColor
{
    [self.colorView setNeedsDisplay];
    self.colorView.backgroundColor = self.colorModel.color;
    self.hueLabel.text = [NSString stringWithFormat:@"%.0f\u00b0",
                          self.colorModel.hue];
    self.saturationLabel.text = [NSString stringWithFormat:@"%.0f%%",
                                 self.colorModel.saturation];
    self.brightnessLabel.text = [NSString stringWithFormat:@"%.0f%%",
                                 self.colorModel.brightness];
    CGFloat red,green, blue, alpha;
    [self.colorModel.color getRed:&red green:&green blue:&blue alpha:&alpha];
    self.webLabel.text = [NSString stringWithFormat:@"#%02lx%02lx%02lx",
                          lround(red*0xff),
                          lround(green*0xff),
                          lround(blue*0xff)];
}
 */
-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
                       change:(NSDictionary *)change
                      context:(void *)context
{
    if ([keyPath isEqualToString:@"hue"])
        {
            self.hueLabel.text = [NSString stringWithFormat:@"%.0f\u00b0",
                              self.colorModel.hue];
            self.hueSlider.value = _colorModel.hue;
        }
    else if ([keyPath isEqualToString:@"saturation"])
        {
            self.saturationLabel.text = [NSString stringWithFormat:@"%.0f%%",
                                     self.colorModel.saturation];
            self.saturationSlider.value = _colorModel.saturation;
        }
    else if ([keyPath isEqualToString:@"brightness"])
        {
            self.brightnessLabel.text = [NSString stringWithFormat:@"%.0f%%",
                                     self.colorModel.brightness];
            self.brightnessSlider.value = _colorModel.brightness;
        }
    else if ([keyPath isEqualToString:@"color"])
        {
            [self.colorView setNeedsDisplay];
            CGFloat red,green, blue, alpha;
            [self.colorModel.color getRed:&red green:&green blue:&blue alpha:&alpha];
            self.webLabel.text = [NSString stringWithFormat:@"#%02lx%02lx%02lx",
                                        lround(red*255),
                                        lround(green*255),
                                        lround(blue*255)];
        }
}
@end
