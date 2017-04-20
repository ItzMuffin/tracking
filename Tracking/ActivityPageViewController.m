//
//  ActivityPageViewController.m
//  Tracking
//
//  Created by Michele Maffei on 05/04/2017.
//  Copyright © 2017 Michele Maffei. All rights reserved.
//

#import "ActivityPageViewController.h"

@interface ActivityPageViewController () <UIPageViewControllerDelegate, UIPageViewControllerDataSource>
{
    NSArray *pages;
}

@end

@implementation ActivityPageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.delegate = self;
    self.dataSource = self;
    
    UITableViewController *page1 = [self.storyboard instantiateViewControllerWithIdentifier:@"page1"];
    UIViewController *page2 = [self.storyboard instantiateViewControllerWithIdentifier:@"page2"];
    
    pages = @[page1,page2];
    
    NSLog(@"pages %@", pages);

    [self setViewControllers:@[page1] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    unsigned long currentIndex = [pages indexOfObject:viewController];
    unsigned long previousIndex = ((currentIndex - 1) % [pages count]);
    return pages[previousIndex];
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    unsigned long currentIndex = [pages indexOfObject:viewController];
    unsigned long nextIndex = ((currentIndex + 1) % [pages count]);
    return pages[nextIndex];
}

-(NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [pages count];
}

-(NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
