//
//  RegisterUser.m
//  myapp
//
//  Created by Zuppers on 12/03/2018.
//  Copyright © 2018 Zuppers. All rights reserved.
//

#import "RegisterUser.h"

@implementation RegisterUser



- (IBAction)registerUser:(id)sender {
    User *user = [User new];
    
    user.userName = self.userName.text;
    user.userLogin = self.userLogin.text;
    user.userPassword = self.userPassword.text;
    
    [self.delegate addUser:user];
    
    [self dismissViewControllerAnimated:TRUE completion:nil];
    
}
@end
