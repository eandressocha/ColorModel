//
//  CMColor.m
//  ColorModel
//
//  Created by Andres Socha on 7/18/14.
//  Copyright (c) 2014 AndreSocha. All rights reserved.
//

#import "CMColor.h"

@implementation CMColor
-(UIColor *)color
{
    return [UIColor colorWithHue:self.hue/360
                      saturation:self.saturation/100
                      brightness:self.brightness/100
                           alpha:1];
}
+(NSSet*)keyPathsForValuesAffectingColor
{
    return [NSSet setWithObjects:@"hue",@"saturation",@"brightness", nil];
}
@end
