//
//  Emp.m
//  ChallangeEmploye
//
//  Created by Wathik Almayali on 7/8/14.
//  Copyright (c) 2014 Wathik Almayali. All rights reserved.
//

#import "Emp.h"

@implementation Emp


-(id)initWithEmployee:(NSDictionary *)employee
{
    self = [super init];
    
    if(self){
        self.firstName = employee[First_Name];
        self.lastName = employee[LastName];
        self.position = employee[EmpPositin];
        self.wage = [employee[EmpWage]intValue];
    }
    return self;
}

    
-(id)init{
    self = [self initWithEmployee:nil];
    return self;
}

@end
