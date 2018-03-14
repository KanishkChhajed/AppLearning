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
    self.rateView.halfSelectedImage = [UIImage imageNamed:@"ICC_highlightedStar_2x.png"];
    self.rateView.fullSelectedImage = [UIImage imageNamed:@"ICC_filledStar_2x.png"];
    self.rateView.editable = YES;
    self.rateView.maxRating = 5;
    self.rateView.delegate = self;
    
}


- (void)rateView:(RateView *)rateView ratingDidChange:(float)rating {
    country.rating = rating;
    NSLog(@"entrou");
}


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
