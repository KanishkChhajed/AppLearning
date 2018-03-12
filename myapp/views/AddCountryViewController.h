//
//  AddCountryViewController.h
//  myapp
//
//  Created by José Victor on 09/03/18.
//  Copyright © 2018 José Victor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddCountryViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *coutrylabel;
@property (weak, nonatomic) IBOutlet UITextField *capitalcity;
@property (weak, nonatomic) IBOutlet UITextField *language;
@property (weak, nonatomic) IBOutlet UITextField *region;


- (IBAction)addCountry;


@end
