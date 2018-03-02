//
//  ListViewControler.m
//  myapp
//
//  Created by Zuppers on 01/03/18.
//  Copyright © 2018 Zuppers. All rights reserved.
//

#import "ListViewControler.h"



@implementation ListViewControler
{
    NSArray *tableData;
}




//- (IBAction)logout:(id)sender {
//    NSLog(@"%@",self.navigationController.viewControllers);
//
//    [self.navigationController popToRootViewControllerAnimated: TRUE];
//}
// https://restcountries.eu/rest/v2/all?fields=name
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Initialize table data
    tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg" , @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
}


- (void)viewDidAppear:(BOOL)animated{
    [[[NSURLSession sharedSession] dataTaskWithURL:[NSURL URLWithString:<#(nonnull NSString *)#>]]]
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:    (NSInteger)section      {
    
//    NSLog(@"total item in table %d",[noOfItemsInArray count]);
    return [tableData count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    
    return cell;
}


@end
