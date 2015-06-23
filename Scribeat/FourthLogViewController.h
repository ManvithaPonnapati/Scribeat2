//
//  FourthLogViewController.h
//  Scribeat
//
//  Created by Manu on 6/22/15.
//  Copyright (c) 2015 Manu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FourthLogViewController : UIViewController
- (IBAction)water:(id)sender;
- (IBAction)soda:(id)sender;
- (IBAction)alcohol:(id)sender;
- (IBAction)tea:(id)sender;
- (IBAction)protein:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *water;
@property (weak, nonatomic) IBOutlet UIImageView *showpic;
@property (weak, nonatomic) IBOutlet UIButton *soda;
@property(nonatomic,retain) UIColor *selectedColor;
@property(nonatomic,retain) UIColor *notselectedColor;
@property (weak, nonatomic) IBOutlet UIImageView *showpic1;
@property (weak, nonatomic) IBOutlet UIButton *alcohol;
@property (weak, nonatomic) IBOutlet UIButton *tea;
@property (weak, nonatomic) IBOutlet UIButton *protein;
@property (weak, nonatomic) IBOutlet UIButton *thumbuo;
@property (weak, nonatomic) IBOutlet UIButton *thumbdown;
- (IBAction)thumbup:(id)sender;
- (IBAction)thumbdown:(id)sender;

@end
