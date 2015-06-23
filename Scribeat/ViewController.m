//
//  ViewController.m
//  Scribeat
//
//  Created by Manu on 6/14/15.
//  Copyright (c) 2015 Manu. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>
#import "FirstLogViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize usern;
@synthesize passwrd;
@synthesize setText;
@synthesize objid;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SignIn:(id)sender {
    PFQuery *namesearch = [PFQuery queryWithClassName:@"LoginInfo"];
    [namesearch whereKey:@"Email" equalTo:self.usern.text];
    
    PFQuery *passwordsearch = [PFQuery queryWithClassName:@"LoginInfo"];
    [passwordsearch whereKey:@"Password" equalTo:self.passwrd.text];
    PFQuery *query = [PFQuery orQueryWithSubqueries:@[namesearch,passwordsearch]];
    
    [query getFirstObjectInBackgroundWithBlock:^(PFObject *object, NSError *error) {
        if (!object) {
            setText.text=@"Please check your login credentials";
        } else {
            
            objid=[object objectId];
            // The find succeeded.
            [self performSegueWithIdentifier:@"GotoHome" sender:self];
        }
    }];
   }
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"GotoHome"]){
        UINavigationController *navController = (UINavigationController *)segue.destinationViewController;
        FirstLogViewController *controller = (FirstLogViewController *)navController.topViewController;
        controller.Username = self.usern.text;
        controller.Password=self.passwrd.text;
        controller.objid=self.objid;
    }
}
@end
