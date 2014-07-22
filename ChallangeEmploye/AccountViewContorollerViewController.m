//
//  AccountViewContorollerViewController.m
//  ChallangeEmploye
//
//  Created by Wathik Almayali on 7/7/14.
//  Copyright (c) 2014 Wathik Almayali. All rights reserved.
//

#import "AccountViewContorollerViewController.h"
#import "challangeTableViewController.h"
#import "EmpChallangeViewController.h"
#import "Emp.h"

@interface AccountViewContorollerViewController ()

@end

@implementation AccountViewContorollerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad

{
    {
        [super viewDidLoad];
        // Do any additional setup after loading the view.
//        self.firstNameLabel.text = [NSString stringWithFormat:@"First Name: %@",self.employeeData.FirstName];
//        self.lastNameLabel.text = [NSString stringWithFormat:@"Last Name: %@",self.employeeData.lastName];
//        self.wageLabel.text = [NSString stringWithFormat:@"Wage: $%i/hr", self.employeeData.wage];
//        self.positionLabel.text = [NSString stringWithFormat:@"Position: %@",self.employeeData.position];
//        
        [self.navigationController.navigationBar setTitleTextAttributes:
         [NSDictionary dictionaryWithObjectsAndKeys:
          [UIFont fontWithName:@"Optima" size:15],
          NSFontAttributeName, nil]];
    }

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
