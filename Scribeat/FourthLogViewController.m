//
//  Thirdlogviewcontroller.m
//  Scribeat
//
//  Created by Manu on 6/17/15.
//  Copyright (c) 2015 Manu. All rights reserved.
//

#import "FourthLogViewController.h"

@implementation FourthLogViewController
@synthesize showpic1;
@synthesize selectedColor;
@synthesize notselectedColor;
@synthesize water;
@synthesize soda;
@synthesize alcohol;
@synthesize tea;
@synthesize protein;
-(void)viewDidLoad {
    selectedColor=[UIColor colorWithRed:191.0f/255.0f
                                  green:215.0f/255.0f
                                   blue:48.0f/255.0f
                                  alpha:1.0f];
    notselectedColor=[UIColor colorWithRed:0.0f/255.0f
                                  green:182.0f/255.0f
                                   blue:241.0f/255.0f
                                  alpha:1.0f];
}

- (IBAction)water:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [btn setBackgroundColor:selectedColor];
    soda.backgroundColor=notselectedColor;
    alcohol.backgroundColor=notselectedColor;
    tea.backgroundColor=notselectedColor;
    protein.backgroundColor=notselectedColor;
    showpic1.image=[UIImage imageNamed: @"water.png"];
}

- (IBAction)soda:(id)sender {
    UIButton *btn=(UIButton *)sender;
   [btn setBackgroundColor:selectedColor];
    water.backgroundColor=notselectedColor;
    alcohol.backgroundColor=notselectedColor;
    tea.backgroundColor=notselectedColor;
    protein.backgroundColor=notselectedColor;
    showpic1.image=[UIImage imageNamed: @"soda.png"];
}

- (IBAction)alcohol:(id)sender {
    UIButton *btn=(UIButton *)sender;
   [btn setBackgroundColor:selectedColor];
    soda.backgroundColor=notselectedColor;
    water.backgroundColor=notselectedColor;
    tea.backgroundColor=notselectedColor;
    protein.backgroundColor=notselectedColor;
    showpic1.image=[UIImage imageNamed: @"alcohol.png"];
}

- (IBAction)tea:(id)sender {
    UIButton *btn=(UIButton *)sender;
   [btn setBackgroundColor:selectedColor];
    soda.backgroundColor=notselectedColor;
    alcohol.backgroundColor=notselectedColor;
    water.backgroundColor=notselectedColor;
    protein.backgroundColor=notselectedColor;
    showpic1.image=[UIImage imageNamed: @"tea.png"];
}

- (IBAction)protein:(id)sender {
    UIButton *btn=(UIButton *)sender;
   [btn setBackgroundColor:selectedColor];
    soda.backgroundColor=notselectedColor;
    alcohol.backgroundColor=notselectedColor;
    tea.backgroundColor=notselectedColor;
    water.backgroundColor=notselectedColor;
    showpic1.image=[UIImage imageNamed: @"milk.png"];
}
@end
