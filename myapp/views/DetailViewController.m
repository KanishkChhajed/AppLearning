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




- (void)configureView
{
    // Update the user interface for the detail item.
    self.rateView.notSelectedImage = [UIImage imageNamed:@"ICC_emptyStar_2x.png"];
    self.rateView.halfSelectedImage = [UIImage imageNamed:@"ICC_filledStar_2x.png"];
    self.rateView.fullSelectedImage = [UIImage imageNamed:@"ICC_filledStar_2x.png"];
    self.rateView.editable = YES;
    self.rateView.maxRating = 5;
    self.rateView.delegate = self;
    self.rateView.rating = self.country.rating;
    
}


- (void)rateView:(RateView *)rateView ratingDidChange:(float)rating {
    NSLog(@" antes  %f",self.country.rating);
    self.country.rating = rating;
    NSLog(@"%f",rating);
}


//- (BOOL)shouldAutorotateToInterfaceOrientation {
//    return YES;
//}
//
//- (BOOL)textFieldShouldReturn:(UITextField *)textField {
//    [textField resignFirstResponder];
//    return YES;
//}

- (void) showCountry{
    self.countryName.text = country.countryName;
    self.capitalCity.text = country.countryCapital;
    self.lenguage.text = country.countryLenguage;
    self.region.text = country.countryRegion;
}

- (void)viewDidLoad {    
    [self showCountry];
    [super viewDidLoad];
    [self configureView];
}


@end
