//
//  DailyActivitiesTableViewController.m
//  Tracking
//
//  Created by Michele Maffei on 31/03/17.
//  Copyright © 2017 Michele Maffei. All rights reserved.
//

#import "DailyActivitiesTableViewController.h"

@interface DailyActivitiesTableViewController ()
{
    NSMutableArray *activitiesArray;
}

@end

@implementation DailyActivitiesTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    
    
    activitiesArray = [[NSMutableArray alloc] init];
    
    [activitiesArray addObject:@"Forest"];
    [activitiesArray addObject:@"Zoo"];
    [activitiesArray addObject:@"Museum"];

    NSLog(@"%@", activitiesArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [activitiesArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ActivityCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text = activitiesArray[indexPath.row];
    
    if ([cell.textLabel.text  isEqual: @"Zoo"]) {
        cell.backgroundColor = [UIColor colorWithRed:0.12 green:0.9 blue:0.5 alpha:1];
    } else {
        cell.backgroundColor = [UIColor colorWithRed:0.9 green:0.4 blue:0.12 alpha:1];
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if((long)indexPath.row == 1){
        [self performSegueWithIdentifier:@"toActivity" sender:self];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Warinig" message:@"You haven't been assigned to this activity" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
                [tableView deselectRowAtIndexPath:indexPath animated:YES];
            }
        ];
        [alert addAction:alertAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
   
    NSLog(@"selected tableview row is %ld",(long)indexPath.row);
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
