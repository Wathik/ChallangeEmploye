//
//  EmpChallangeViewController.h
//  ChallangeEmploye
//
//  Created by Wathik Almayali on 7/7/14.
//  Copyright (c) 2014 Wathik Almayali. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmpChallangeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *EnterFirstName;
@property (strong, nonatomic) IBOutlet UITextField *EnterLastName;
@property (strong, nonatomic) IBOutlet UITextField *EnterWage;
@property (strong, nonatomic) IBOutlet UITextField *EnterPosition;
- (IBAction)CreateAcount:(UIButton *)sender;
- (IBAction)Cancel:(UIButton *)sender;

@end
