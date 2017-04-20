//
//  ChildTableViewCell.m
//  Tracking
//
//  Created by Michele Maffei on 05/04/2017.
//  Copyright © 2017 Michele Maffei. All rights reserved.
//

#import "ChildTableViewCell.h"

@implementation ChildTableViewCell
{
    int dist;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)syncButtonPressed:(UIButton *)sender
{
    _distanceLabel.text = @"Syncronizing";
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(initiateDistanceLabel) userInfo:nil repeats:NO];
    
    _syncButton.enabled = NO;
}

- (void)initiateDistanceLabel
{
    dist = 0;
    _distanceLabel.text = [NSString stringWithFormat:@"Distance: %i m", dist];
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:.5 target:self selector:@selector(updateDistanceLabel) userInfo:nil repeats:YES];
}

- (void)updateDistanceLabel
{
    [self setRandomDistance];
}

- (void)setRandomDistance
{
    int temp = dist;
    
    int distance = arc4random() % 3;
    
    switch(distance)
    {
        case 0:
            NSLog(@"0");
            dist = temp + (1 + arc4random() % (4 - 1));
            if (dist>50){
                _distanceLabel.text = @"Out of range";
                break;
            } else {
                _distanceLabel.text = [NSString stringWithFormat:@"Distance: %i m", dist];
            }
            break;
        case 1:
            NSLog(@"1");
            if (dist>50){
                _distanceLabel.text = @"Out of range";
                break;
            } else {
                dist = temp;
                _distanceLabel.text = [NSString stringWithFormat:@"Distance: %i m", dist];
            }
            break;
        case 2:
            NSLog(@"2");
            dist = temp - (1 + arc4random() % (4 - 1));
            if (dist<0){
                dist = temp;
                _distanceLabel.text = [NSString stringWithFormat:@"Distance: %i m", dist];
                break;
            } else if (dist>50) {
                _distanceLabel.text = @"Out of range";
            } else {
                _distanceLabel.text = [NSString stringWithFormat:@"Distance: %i m", dist];
            }
            break;
        default:
            break;
    }
}

@end
