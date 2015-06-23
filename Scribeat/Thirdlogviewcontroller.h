//
//  Thirdlogviewcontroller.h
//  Scribeat
//
//  Created by Manu on 6/17/15.
//  Copyright (c) 2015 Manu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Thirdlogviewcontroller : UIViewController
- (IBAction)grain:(id)sender;
- (IBAction)fruit:(id)sender;
- (IBAction)veggie:(id)sender;
- (IBAction)protein:(id)sender;
- (IBAction)dairy:(id)sender;
@property (nonatomic,retain) UIColor *notselectedColor;
@property (weak, nonatomic) IBOutlet UIButton *grain;
@property (weak, nonatomic) IBOutlet UIImageView *showpic;
@property (nonatomic,retain) UIColor *selectedColor;
@property (weak, nonatomic) IBOutlet UIButton *fruit;
@property (weak, nonatomic) IBOutlet UIButton *veggie;
@property (weak, nonatomic) IBOutlet UIButton *protein;
@property (weak, nonatomic) IBOutlet UIButton *diary;
@end
