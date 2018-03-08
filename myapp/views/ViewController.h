//
//  ViewController.h
//  myapp
//
//  Created by Zuppers on 28/02/18.
//  Copyright © 2018 Zuppers. All rights reserved.
//



#import <UIKit/UIKit.h>

@class ViewController;


@interface ViewController : UIViewController{
    
}

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;


- (IBAction)login:(id)sender;

@end

