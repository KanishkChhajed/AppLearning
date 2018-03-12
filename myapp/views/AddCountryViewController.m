//
//  AddCountryViewController.m
//  myapp
//
//  Created by José Victor on 09/03/18.
//  Copyright © 2018 José Victor. All rights reserved.
//

#import "AddCountryViewController.h"

@implementation AddCountryViewController

- (IBAction)addCountry{
    Generic *generic = [Generic new];
    generic.countryName = self.countrylabel.text;
    generic.countryCapital = self.capitalcity.text;
    generic.countryRegion = self.region.text;
    generic.countryLenguage = self.language.text;
    
    [self.delegate addCountries:generic];
    [self.navigationController popViewControllerAnimated:TRUE];
    
}
@end
