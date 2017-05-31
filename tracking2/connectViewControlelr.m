//
//  connectViewControlelr.m
//  tracking2
//
//  Created by Michele Maffei on 27/05/2017.
//  Copyright © 2017 Michele Maffei. All rights reserved.
//

#import "connectViewControlelr.h"

@interface connectViewControlelr ()
@property (strong, nonatomic) IBOutlet UIButton *connectButton;

@end

@implementation connectViewControlelr

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)connectButtonPressed:(id)sender
{
    [self performSegueWithIdentifier:@"connectSegue" sender:sender];
}


@end
