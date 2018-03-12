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

@interface ListViewControler : UITableViewController <UITableViewDelegate, UITableViewDataSource> {
    
}
@property (nonatomic,strong) NSMutableArray *tableData;

//- (IBAction)logout:(id)sender;

@end
