//
//  SecondLogViewController.m
//  Scribeat
//
//  Created by Manu on 6/14/15.
//  Copyright (c) 2015 Manu. All rights reserved.
//

#import "SecondLogViewController.h"
#import <Parse/Parse.h>
@implementation SecondLogViewController
@synthesize myImageview;
@synthesize notselected;
@synthesize objid;
@synthesize username;
@synthesize btn1;
@synthesize btn2;
@synthesize btn3;
@synthesize btn4;
@synthesize btn5;
@synthesize howfull;
@synthesize selectedColor;
@synthesize foodordrink;
-(void)viewDidLoad {
    [super viewDidLoad];
    btn1.hidden=true;
    btn2.hidden=true;
    btn3.hidden=true;
    btn4.hidden=true;
    btn5.hidden=true;
   
    selectedColor=[UIColor colorWithRed:191.0f/255.0f
                                           green:215.0f/255.0f
                                            blue:48.0f/255.0f
                                           alpha:1.0f];
    notselected=[UIColor colorWithRed:0.0f/255.0f
                                     green:182.0f/255.0f
                                      blue:241.0f/255.0f
                                     alpha:1.0f];}


- (IBAction)takePic:(id)sender {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [imagePickerController setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    
    // image picker needs a delegate,
    [imagePickerController setDelegate:self];
    
    // Place image picker on the screen
    [self presentModalViewController:imagePickerController animated:YES];

}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [self dismissModalViewControllerAnimated:YES];
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    [myImageview setImage:image];
    PFQuery *query = [PFQuery queryWithClassName:@"LoginInfo"];
    
    // Retrieve the object by id
    [query getObjectInBackgroundWithId:self.objid
                                 block:^(PFObject *user, NSError *error) {
                                     // Now let's update it with some new data. In this case, only cheatMode and score
                                     // will get sent to the cloud. playerName hasn't changed.
                                     NSData *imageData = UIImagePNGRepresentation(image);
                                     PFFile *imageFile = [PFFile fileWithName:@"image.png" data:imageData];

                                     user[@"picture"]=imageFile;
                                    
                                     user[@"timestamp"]=[NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970] * 1000];
                                      [user saveInBackground];
                                     
                                 }];
     
    // "myImageView" name of any UIImageView.
}
- (IBAction)food:(id)sender {
     foodordrink=@"1";
    UIButton *btn=(UIButton *)sender;
    [btn setBackgroundColor:selectedColor];
    btn1.hidden=false;
    btn2.hidden=false;
    btn3.hidden=false;
    btn4.hidden=false;
    btn5.hidden=false;
    
}

- (IBAction)btn2:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [btn setBackgroundColor:selectedColor];
    howfull.text=@"Somewhat full";
    btn1.hidden=false;
    btn3.hidden=false;
    btn4.hidden=false;
    btn5.hidden=false;
    btn1.backgroundColor=notselected;
    btn3.backgroundColor=notselected;
    btn4.backgroundColor=notselected;
    btn5.backgroundColor=notselected;

    PFQuery *query = [PFQuery queryWithClassName:@"LoginInfo"];
    NSString *t=@"2";
    PFObject *newGroup = [PFObject objectWithClassName:@"LoginInfo"];
    newGroup[@"howfull"] = t;
    newGroup[@"timestamp"]=[NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970] * 1000];
  
    [newGroup saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error)
    {
        if(error)
            NSLog(@"Error saving %@", error);
        else
            NSLog(@"Successfully added a group");
    }];
    // Retrieve the object by id
    [query getObjectInBackgroundWithId:self.objid
                                 block:^(PFObject *user, NSError *error) {
                                     // Now let's update it with some new data. In this case, only cheatMode and score
                                     // will get sent to the cloud. playerName hasn't changed.
                                    
                                     user[@"howfull"]=t;
                                     
                                     user[@"timestamp"]=[NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970] * 1000];
                                     [user saveInBackground];
                                     
                                 }];


}

- (IBAction)btn3:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [btn setBackgroundColor:selectedColor];
    howfull.text=@"I am full";
    btn1.hidden=false;
    btn2.hidden=false;
    btn4.hidden=false;
    btn5.hidden=false;
    btn2.backgroundColor=notselected;
    btn1.backgroundColor=notselected;
    btn4.backgroundColor=notselected;
    btn5.backgroundColor=notselected;

    PFQuery *query = [PFQuery queryWithClassName:@"LoginInfo"];
    NSString *t=@"3";
    // Retrieve the object by id
    [query getObjectInBackgroundWithId:self.objid
                                 block:^(PFObject *user, NSError *error) {
                                     // Now let's update it with some new data. In this case, only cheatMode and score
                                     // will get sent to the cloud. playerName hasn't changed.
                                     
                                     user[@"howfull"]=t;
                                     
                                     user[@"timestamp"]=[NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970] * 1000];
                                     [user saveInBackground];
                                     
                                 }];
}

- (IBAction)btn4:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [btn setBackgroundColor:selectedColor];
    howfull.text=@"Little more than full";
    btn1.hidden=false;
    btn2.hidden=false;
    btn3.hidden=false;
    btn5.hidden=false;
    btn2.backgroundColor=notselected;
    btn3.backgroundColor=notselected;
    btn1.backgroundColor=notselected;
    btn5.backgroundColor=notselected;

    PFQuery *query = [PFQuery queryWithClassName:@"LoginInfo"];
    NSString *t=@"5";
    // Retrieve the object by id
    [query getObjectInBackgroundWithId:self.objid
                                 block:^(PFObject *user, NSError *error) {
                                     // Now let's update it with some new data. In this case, only cheatMode and score
                                     // will get sent to the cloud. playerName hasn't changed.
                                     
                                     user[@"howfull"]=t;
                                     
                                     user[@"timestamp"]=[NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970] * 1000];
                                     [user saveInBackground];
                                     
                                 }];
}

- (IBAction)btn5:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [btn setBackgroundColor:selectedColor];
    howfull.text=@"very full";
    btn1.hidden=false;
    btn2.hidden=false;
    btn3.hidden=false;
    btn4.hidden=false;
    btn2.backgroundColor=notselected;
    btn3.backgroundColor=notselected;
    btn4.backgroundColor=notselected;
    btn1.backgroundColor=notselected;

    PFQuery *query = [PFQuery queryWithClassName:@"LoginInfo"];
    NSString *t=@"2";
    // Retrieve the object by id
    [query getObjectInBackgroundWithId:self.objid
                                 block:^(PFObject *user, NSError *error) {
                                     // Now let's update it with some new data. In this case, only cheatMode and score
                                     // will get sent to the cloud. playerName hasn't changed.
                                     
                                     user[@"howfull"]=t;
                                     
                                     user[@"timestamp"]=[NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970] * 1000];
                                     [user saveInBackground];
                                     
                                 }];
}


- (IBAction)btn1:(id)sender {
    UIButton *btn=(UIButton *)sender;
    [btn setBackgroundColor:selectedColor];
    howfull.text=@"Not Full";
    btn2.backgroundColor=notselected;
    btn3.backgroundColor=notselected;
    btn4.backgroundColor=notselected;
    btn5.backgroundColor=notselected;
    btn2.hidden=false;
    btn3.hidden=false;
    btn4.hidden=false;
    btn5.hidden=false;
    PFQuery *query = [PFQuery queryWithClassName:@"LoginInfo"];
    NSString *t=@"1";
    // Retrieve the object by id
    [query getObjectInBackgroundWithId:self.objid
                                 block:^(PFObject *user, NSError *error) {
                                     // Now let's update it with some new data. In this case, only cheatMode and score
                                     // will get sent to the cloud. playerName hasn't changed.
                                     
                                     user[@"howfull"]=t;
                                     
                                     user[@"timestamp"]=[NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970] * 1000];
                                     [user saveInBackground];
                                     
                                 }];
}

- (IBAction)foodordrink:(id)sender {
    if([foodordrink isEqualToString:@"1"])
    {
         [self performSegueWithIdentifier:@"FoodView" sender:self];
    }
      
}
@end
