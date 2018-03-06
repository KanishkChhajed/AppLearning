//
//  ListViewControler.m
//  myapp
//
//  Created by Zuppers on 01/03/18.
//  Copyright © 2018 Zuppers. All rights reserved.
//

#import "ListViewControler.h"
#import "AFNetworking.h"
#import "Generic.h"

@implementation ListViewControler
{
    NSMutableArray *tableData;
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
    NSString *URLString = @"https://restcountries.eu/rest/v2/all?fields=name;capital";
    // Initialize table data
//    tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg" , @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET: URLString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JsonCONtent %@",responseObject);
        NSDictionary *myDictionary = responseObject;
        
        //NSLog(@" quantidade %lu",[myDictionary count]);
        tableData = [NSMutableArray arrayWithCapacity: [myDictionary count]];
    
    
    //NSDictionary *parameters = @{@"name": @"capital", @"currencies": @[@1, @2, @3]};
    
    
        
        for (id key in myDictionary) {
            Generic *obj = [[Generic alloc] init];

            obj.mystring1 = [key objectForKey:@"capital"];
            obj.mystring2 = [key objectForKey:@"name"];

            [tableData addObject: obj];
            NSLog(@"%@",[key objectForKey:@"capital"]);

        }
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}


- (void)viewDidAppear:(BOOL)animated{
  
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
