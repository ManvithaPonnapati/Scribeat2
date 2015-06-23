//
//  SignUpViewController.m
//  Scribeat
//
//  Created by Manu on 6/14/15.
//  Copyright (c) 2015 Manu. All rights reserved.
//

#import "SignUpViewController.h"
#import <Parse/Parse.h>
@implementation SignUpViewController

@synthesize fname;
@synthesize lname;
@synthesize email;
@synthesize password;
@synthesize age;
@synthesize weight;
- (IBAction)signup:(id)sender {
    
    PFObject *user=[PFObject objectWithClassName:@"LoginInfo"];
    user[@"FirstName"]=self.fname.text;
    user[@"LastName"]=self.lname.text;
    user[@"Email"]=self.email.text;
    user[@"Password"]=self.password.text;
    user[@"Age"]=self.age.text;
    user[@"Weight"]=self.weight.text;
    [user saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        
        if (succeeded){
            NSLog(@"Object Uploaded!");
        }
        else{
            NSString *errorString = [[error userInfo] objectForKey:@"error"];
            NSLog(@"Error: %@", errorString);
        }
        
    }];
    [self performSegueWithIdentifier:@"GobacktoLogin" sender:self];
    
    
}
@end
