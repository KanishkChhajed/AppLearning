//
//  ListViewControler.h
//  myapp
//
//  Created by José Victor on 01/03/18.
//  Copyright © 2018 José Victor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "AddCountryViewController.h"
#import "DetailViewController.h"

@interface ListViewControler : UITableViewController <UITableViewDelegate, UITableViewDataSource,NSObject, AddCountryViewControllerDelegate, DetailViewDelegate> {
    
}
@property (nonatomic,strong) NSMutableArray *tableData;

- (IBAction)logout:(id)sender;

@end
