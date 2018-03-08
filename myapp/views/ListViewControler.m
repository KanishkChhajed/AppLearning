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
#import "GenericTableViewCell.h"

@implementation ListViewControler

@synthesize tableData;

//- (IBAction)logout:(id)sender {
//    NSLog(@"%@",self.navigationController.viewControllers);
//
//    [self.navigationController popToRootViewControllerAnimated: TRUE];
//}
// https://restcountries.eu/rest/v2/all?fields=name



- (void) loadData:(UITableView *) tableView{
    NSString *URLString = @"https://restcountries.eu/rest/v2/all?fields=name;capital";
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    [manager GET: URLString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        NSDictionary *myDictionary = responseObject;
        self.tableData = [NSMutableArray arrayWithCapacity: [myDictionary count]];

        //NSDictionary *parameters = @{@"name": @"capital", @"currencies": @[@1, @2, @3]};
        for (id key in myDictionary) {
            Generic *obj = [[Generic alloc] init];
            obj.mystring1 = [key objectForKey:@"name"];
            obj.mystring2 = [key objectForKey:@"capital"];
            [self.tableData addObject: obj];
            

        }
        [self.tableView reloadData];
    }
    failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    
    
    [tableView reloadData];
}

- (void)viewDidLoad
{
    [self loadData: self.tableView];
    [NSThread sleepForTimeInterval:2.0f];
    
    
    [super viewDidLoad];
}


- (void)viewDidAppear:(BOOL)animated{
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"GenericCell";
    
    GenericTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: simpleTableIdentifier forIndexPath:indexPath];
    
    Generic *generic = [tableData objectAtIndex:indexPath.row];
    cell.lblContent1.text = generic.mystring1;
    cell.lblContent2.text = generic.mystring2;
    return cell;
}
- (IBAction)logout:(id)sender {
    
    NSLog(@"%@",self.navigationController.viewControllers);
    
    //[self.navigationController popToRootViewControllerAnimated:YES];
    [self dismissViewControllerAnimated: true completion:nil];
}


@end
