//
//  ChildTableViewCell.h
//  Tracking
//
//  Created by Michele Maffei on 05/04/2017.
//  Copyright © 2017 Michele Maffei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChildTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *distanceLabel;
@property (strong, nonatomic) IBOutlet UIButton *syncButton;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;

- (IBAction)syncButtonPressed:(UIButton *)sender;

@end
