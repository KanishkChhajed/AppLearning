//
//  DetailViewController.m
//  myapp
//
//  Created by José Victor Pereira Costa on 11/03/2018.
//  Copyright © 2018 José Victor Pereira Costa. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController

@synthesize country;

- (void) showCountry{
    self.countryName.text = country.countryName;
    self.capitalCity.text = country.countryCapital;
    self.lenguage.text = country.countryLenguage;
    self.region.text = country.countryRegion;
}

- (void)viewDidLoad {    
    [self showCountry];
    [super viewDidLoad];
}


@end
