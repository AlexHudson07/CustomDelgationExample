//
//  MTSlider.m
//  CustomDelegation
//
//  Created by Alex Hudson on 2/20/15.
//  Copyright (c) 2015 Alex Hudson. All rights reserved.
//

#import "MTSlider.h"

@implementation MTSlider

- (id)initWithFrame:(CGRect)frame andDelegate:(id<MTSliderDelegate>)delegateObject{
    self = [super initWithFrame:frame];
    if (self) {
        self.sliderDelegate = delegateObject;
        self.value = [self.sliderDelegate startPositionForMTSlider:self];
    }
    return self;
}

- (void)setValue:(float)value animated:(BOOL)animated{
    [super setValue:value animated:animated];
    if (self.sliderDelegate != nil && [self.sliderDelegate respondsToSelector:@selector(MTSliderDidChange:withValue:)]){
        [self.sliderDelegate MTSliderDidChange:self withValue:value];
    }
}

@end
