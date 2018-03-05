//
//  ListViewControler.m
//  myapp
//
//  Created by Zuppers on 01/03/18.
//  Copyright © 2018 Zuppers. All rights reserved.
//

#import "ListViewControler.h"
#import "AFNetworking.h"

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
    
    NSString *URLString = @"https://restcountries.eu/rest/v2/all?fields=name;capital";
    //NSDictionary *parameters = @{@"name": @"capital", @"currencies": @[@1, @2, @3]};
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET: URLString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        NSLog(@"JsonCONtent %@",responseObject);
        NSDictionary *myDictionary = responseObject;
        //NSLog(@"content: %@", [responseObject objectForKey:@"capital"]);
        //NSLog(@"JSON: %@", [responseObject objectForKey:@"name"]);
//        NSDictionary *returnDictionary = [NSJSONSerialization JSONObjectWithData:responseObject                                                                                                                                       options:0 error:nil];
        //NSLog(@"%@",returnDictionary);
        //NSMutableDictionary *dic = responseObject;
        for (id key in myDictionary) {
            
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
