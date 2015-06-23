//
//  SecondLogViewController.h
//  Scribeat
//
//  Created by Manu on 6/14/15.
//  Copyright (c) 2015 Manu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondLogViewController : UIViewController
- (IBAction)takePicture:(id)sender;
- (IBAction)takePic:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *myImageview;
@property (nonatomic,weak) UIColor *notselected;
@property (nonatomic,retain) NSString *foodordrink;
@property (nonatomic,retain) NSString *username;
- (IBAction)foodordrink:(id)sender;

@property(nonatomic,retain)NSString *objid;
- (IBAction)food:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet UIButton *btn5;
- (IBAction)btn2:(id)sender;
- (IBAction)btn3:(id)sender;
- (IBAction)btn4:(id)sender;
- (IBAction)btn5:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *howfull;
@property (nonatomic,retain) UIColor *selectedColor;
- (IBAction)btn1:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
-(void)stoetodb:(NSString *)inputnumber;
@end
