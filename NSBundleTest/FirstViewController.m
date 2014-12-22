//
//  FirstViewController.m
//  NSBundleTest
//
//  Created by Glenna Buford on 12/19/14.
//  Copyright (c) 2014 Glenna Buford. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(10.0, 10.0, 200.0, 200.0)];
    [button setBackgroundColor:[UIColor colorWithRed:1.0 green:1.0 blue:0.0 alpha:1.0]];
    [button setTitle:@"title words" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(method:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender {
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self showViewController:secondVC sender:self];
}


- (void)method:(UIButton*)button
{
    NSLog(@"Button  clicked.");
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
