//
//  Thirdlogviewcontroller.m
//  Scribeat
//
//  Created by Manu on 6/17/15.
//  Copyright (c) 2015 Manu. All rights reserved.
//

#import "Thirdlogviewcontroller.h"

@implementation Thirdlogviewcontroller
@synthesize showpic;
@synthesize selectedColor;
@synthesize grain;
@synthesize fruit;
@synthesize veggie;
@synthesize protein;
@synthesize diary;
@synthesize notselectedColor;
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
- (IBAction)grain:(id)sender {
    UIButton *btn=(UIButton *)sender;
     [btn setBackgroundColor:selectedColor];
   
        showpic.image=[UIImage imageNamed: @"Grain.png"];
}

- (IBAction)fruit:(id)sender {
    UIButton *btn=(UIButton *)sender;
     [btn setBackgroundColor:selectedColor];
   
    showpic.image=[UIImage imageNamed: @"Veggie.png"];
}

- (IBAction)veggie:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [btn setBackgroundColor:selectedColor];
    showpic.image=[UIImage imageNamed: @"Veggie.png"];
   
}

- (IBAction)protein:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [btn setBackgroundColor:selectedColor];
    showpic.image=[UIImage imageNamed: @"Protein.png"];
   
}

- (IBAction)dairy:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [btn setBackgroundColor:selectedColor];
    showpic.image=[UIImage imageNamed: @"milk.png"];
  }
- (IBAction)thumbdown:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [btn setBackgroundColor:selectedColor];
}
- (IBAction)thumbup:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [btn setBackgroundColor:selectedColor];
}
@end
