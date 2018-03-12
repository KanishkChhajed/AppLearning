//
//  ViewController.h
//  myapp
//
//  Created by José Victor on 28/02/18.
//  Copyright © 2018 José Victor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterUser.h"

@class ViewController;

@interface ViewController : UIViewController <NSObject, RegisterUserDelegate>{
    
}
@property NSMutableArray *users;
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)login:(id)sender;

- (IBAction)registerUser:(id)sender;

@end

