//
//  MTSlider.h
//  CustomDelegation
//
//  Created by Alex Hudson on 2/20/15.
//  Copyright (c) 2015 Alex Hudson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MTSlider;
@protocol MTSliderDelegate <NSObject>

@optional
-(void)MTSliderDidChange:(MTSlider *)MTSlider withValue:(CGFloat) value;

@required
-(CGFloat)startPositionForMTSlider:(MTSlider *)MTSlider;

@end

@interface MTSlider : UISlider

@property (nonatomic, weak) id <MTSliderDelegate> sliderDelegate;

- (id)initWithFrame:(CGRect)frame andDelegate:(id<MTSliderDelegate>)delegateObject;

@end
