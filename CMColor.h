//
//  CMColor.h
//  ColorModel
//
//  Created by Andres Socha on 7/18/14.
//  Copyright (c) 2014 AndreSocha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMColor : NSObject
@property (nonatomic)float hue;
@property (nonatomic)float saturation;
@property (nonatomic)float brightness;
@property (readonly, nonatomic)UIColor *color;

@end
