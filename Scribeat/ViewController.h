//
//  ViewController.h
//  Scribeat
//
//  Created by Manu on 6/14/15.
//  Copyright (c) 2015 Manu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usern;
@property (weak, nonatomic) IBOutlet UILabel *setText;
@property (nonatomic,retain) NSString *objid;
@property (weak, nonatomic) IBOutlet UITextField *passwrd;
- (IBAction)SignIn:(id)sender;

@end

