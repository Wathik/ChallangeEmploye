//
//  challangeTableViewController.h
//  ChallangeEmploye
//
//  Created by Wathik Almayali on 7/7/14.
//  Copyright (c) 2014 Wathik Almayali. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Emp.h"

@interface challangeTableViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate, UIPageViewControllerDelegate>


@property (strong, nonatomic) NSMutableArray *employeedataObjects;
@property (strong, nonatomic) Emp *employeeObj;
@property (strong, nonatomic) NSString *saveEmployees;


//@property (strong, nonatomic) EMPCHALLANGEViewController *detailController;
@end
