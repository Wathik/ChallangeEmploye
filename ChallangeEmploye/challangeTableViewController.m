//
//  challangeTableViewController.m
//  ChallangeEmploye
//
//  Created by Wathik Almayali on 7/7/14.
//  Copyright (c) 2014 Wathik Almayali. All rights reserved.
//

#import "challangeTableViewController.h"

@interface challangeTableViewController ()

@end

@implementation challangeTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    self.employeedataObjects = [NSMutableArray alloc];
    NSLog(@"self.employee");
    
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    // Configure the cell...
    Emp *record = self.employeedataObjects[indexPath.row];
    cell.textLabel.text = record;
//    NSString *wageString = [NSString stringWithFormat:@"%@",[[self.employeedataObjects objectAtIndex:indexPath.row] objectForKey:_wage]];
//    int i = [wageString intValue];
    //cell.detailTextLabel.text = [NSString stringWithFormat:@"%i", i];
    //cell.imageView.image = [[self.employee objectAtIndex:indexPath.row] objectForKey:LastName];
    
    
    //return cell;




// Override to support conditional editing of the table view.
- (BOOL)tableView;(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
    {
    
    // Return NO if you do not want the specified item to be editable.
    
   

    return YES;


    }

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete){
        /* If a user deletes the row remove the task at that row from the tasksArray */
        [self.employeedataObjects removeObjectAtIndex:indexPath.row];
        
        /* With the updated array of task objects iterate over them and convert them to plists. Save the plists in the newTaskObjectsData NSMutableArray. Save this array to NSUserDefaults. */
        NSMutableArray *newmployeeData = [[NSMutableArray alloc] init];
        
        for (Emp *data in self.employeedataObjects){
            [newmployeeData addObject:[self employeeObjectsDict:record]];
        }
        
        [[NSUserDefaults standardUserDefaults] setObject:newEmployeeObjectsData forKey:EMPLOYEE_OBJECTS_KEY];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        /* Animate the deletion of the cell */
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
    - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
    {
        self.employeeObj = self.employeedataObjects[fromIndexPath.row];
        [self.employeedataObjects removeObjectAtIndex:fromIndexPath.row];
        [self saveEmployees];
    }


// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
    
-(void)dataCells
    {
        if (self.tableView.editing == YES)[self.tableView setEditing:NO animated:YES];
        else [self.tableView setEditing:YES animated:YES];
    }
    
#pragma mark - Navigation
    
    - (IBAction)Create Account:(UIBarButtonItem *)sender
    {
        [self performSegueWithIdentifier:@"toAddEmployee" sender:sender];
    }
    
    - (IBAction)rCreate Account:(UIBarButtonItem *)sender
    {
        
        [self reorderCells];
    }





#pragma mark - Navigation
 
 //In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    
    // Pass the selected object to the new view controller.
    if ([segue.destinationViewController isKindOfClass:[UIViewController class]]){
        UIViewController *addGoalViewController = segue.destinationViewController;
        addGoalViewController.delegate = self;
    }
    else if ([segue.destinationViewController isKindOfClass:[DetailViewController class]]){
        DetailViewController *detailViewController = segue.destinationViewController;
        NSIndexPath *path = sender;
        EmployeeRecord *empObject = self.employeeObjects[path.row];
        detailViewController.employeeRecord = empObject;
        detailViewController.delegate = self;
    }

}

}
}

@end
