//
//  MyContactsViewController.m
//  MyContacts
//
//  Created by Charles Konkol on 2/18/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "MyContactsViewController.h"

@interface MyContactsViewController ()

@end

@implementation MyContactsViewController
@synthesize scrollView;
@synthesize txtEmail;
@synthesize txtFName;
@synthesize txtLName;
@synthesize txtViews;

- (void)viewDidLoad
{
    scrollView.frame = CGRectMake(0, 0, 320, 520); [scrollView setContentSize:CGSizeMake(320, 793)];
    [super viewDidLoad];
    
    //keyboard hooks
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [scrollView release];
    [txtFName release];
    [txtLName release];
    [txtEmail release];
    [txtViews release];
    [super dealloc];
}
-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}

-(void)dismissKeyboard {
    [txtEmail resignFirstResponder];
    [txtFName resignFirstResponder];
    [txtLName resignFirstResponder];
}

- (IBAction)btnSave:(id)sender {
    [txtEmail resignFirstResponder];
    [txtFName resignFirstResponder];
    [txtLName resignFirstResponder];
    //format
     txtViews.text = [NSString stringWithFormat:@"Firstname: %@\nLastName: %@\nEmail: %@",txtFName.text,txtLName.text,txtEmail.text];
 
   txtFName.Text = @"";
     txtLName.Text = @"";
     txtEmail.Text = @"";
}
@end
