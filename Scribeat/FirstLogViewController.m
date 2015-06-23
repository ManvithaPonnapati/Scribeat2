//
//  FirstLogViewController.m
//  Scribeat
//
//  Created by Manu on 6/14/15.
//  Copyright (c) 2015 Manu. All rights reserved.
//

#import "FirstLogViewController.h"
#import "SecondLogViewController.h"
@implementation FirstLogViewController
@synthesize objid;
@synthesize Username;
@synthesize Password;
-(void)viewDidLoad
{
   }
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"Gotomeal"]){
        SecondLogViewController *controller = (SecondLogViewController *)segue.destinationViewController;
        controller.username = self.Username;
        controller.objid=self.objid;
    }
}@end
