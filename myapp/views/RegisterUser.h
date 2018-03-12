//
//  RegisterUser.h
//  myapp
//
//  Created by Zuppers on 12/03/2018.
//  Copyright © 2018 Zuppers. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "User.h"
#import "RegisterUser.h"

@protocol RegisterUserDelegate <NSObject>

-(void) addUser:(User *) user;

@end

@interface RegisterUser : UIViewController <NSObject>

@property (nonatomic, assign) id <RegisterUserDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *userLogin;
@property (weak, nonatomic) IBOutlet UITextField *userPassword;

- (IBAction)registerUser:(id)sender;

@end
