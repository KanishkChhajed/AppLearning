//
//  DetailViewController.h
//  myapp
//
//  Created by José Victor Pereira Costa on 11/03/2018.
//  Copyright © 2018 Zuppers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Generic.h"

@class DetailViewController;


@interface DetailViewController : UIViewController

@property Generic *country;

@property (weak,nonatomic) IBOutlet UITextField *countryName;
@property (weak,nonatomic) IBOutlet UILabel *capitalCity;
@property (weak,nonatomic) IBOutlet UILabel *lenguage;
@property (weak,nonatomic) IBOutlet UILabel *region;


@end
