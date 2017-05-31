//
//  ViewController.m
//  tracking2
//
//  Created by Michele Maffei on 27/05/2017.
//  Copyright © 2017 Michele Maffei. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self makeLineTextField:_usernameTextField];
    [self makeLineTextField:_passwordTextField];
    [self buttonRoundRect:_loginButton];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginButtonPressed:(UIButton *)sender
{
    [self performSegueWithIdentifier:@"loginSegue" sender:sender];
}


#pragma mark Appearence

- (void)buttonRoundRect:(UIButton*)button
{
    CALayer *border = [CALayer layer];
    CGFloat borderWidth = 2;
    border.borderColor = [UIColor colorWithRed:0.91 green:0.53 blue:0.51 alpha:1].CGColor;
    border.frame = CGRectMake(0, 0, button.frame.size.width, button.frame.size.height);
    border.borderWidth = borderWidth;
    border.cornerRadius = 8;
    [button.layer addSublayer:border];
    button.layer.masksToBounds = YES;
}

- (void)makeLineTextField:(UITextField*)textField
{
    CALayer *border = [CALayer layer];
    CGFloat borderWidth = 1;
    border.borderColor = [UIColor darkGrayColor].CGColor;
    border.frame = CGRectMake(0, textField.frame.size.height - borderWidth, textField.frame.size.width, textField.frame.size.height);
    border.borderWidth = borderWidth;
    [textField.layer addSublayer:border];
    textField.layer.masksToBounds = YES;
}


@end
