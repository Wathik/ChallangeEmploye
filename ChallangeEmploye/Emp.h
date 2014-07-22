//
//  Emp.h
//  ChallangeEmploye
//
//  Created by Wathik Almayali on 7/8/14.
//  Copyright (c) 2014 Wathik Almayali. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "EmpChallangeViewController.h"
//#import "AccountViewContorollerViewController.h"

#define First_Name @"First Name"
#define LastName @"Last Name"
#define EmpWage @" Emp Wage"
#define EmpPositin @"Employee Position"
#define EmpImage @" Emp Image"


@interface Emp : NSObject

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (nonatomic) int wage;
@property (strong, nonatomic) NSString *position;


-(id)initWithEmployee:(NSDictionary *)employee;

@end
