//
//  ModalViewController.m
//  DemoTabs
//
//  Created by Filipe Patrício on 12/05/15.
//  Copyright (c) 2015 Filipe Patrício. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)closeButtonPressed:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)changeToFirstTabPressed:(id)sender
{
    
    [self dismissViewControllerAnimated:YES completion:nil];

    [(UINavigationController*)self.presentingViewController popToRootViewControllerAnimated:YES];
    
    self.presentingViewController.tabBarController.selectedIndex = 1;
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
