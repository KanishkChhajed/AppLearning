//
//  AddCountryViewController.h
//  myapp
//
//  Created by José Victor on 09/03/18.
//  Copyright © 2018 José Victor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Generic.h"
@class AddCountryViewController;



@protocol AddCountryViewControllerDelegate <NSObject>

- (void) addCountries:(Generic *) generic;

@end

@interface AddCountryViewController : UIViewController <NSObject>

@property (nonatomic, assign) id <AddCountryViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *countrylabel;
@property (weak, nonatomic) IBOutlet UITextField *capitalcity;
@property (weak, nonatomic) IBOutlet UITextField *language;
@property (weak, nonatomic) IBOutlet UITextField *region;


- (IBAction)addCountry;


@end
