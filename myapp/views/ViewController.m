//
//  ViewController.m
//  myapp
//
//  Created by José Victor on 28/02/18.
//  Copyright © 2018 José Victor. All rights reserved.
//

#import "ViewController.h"
#import "ListViewControler.h"
#import "RegisterUser.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize users;

- (void)viewDidLoad {
    users = [NSMutableArray new];
    User *user = [User new];
    user.userName = @"Teste";
    user.userLogin = @"teste";
    user.userPassword = @"teste";
    [users addObject:user];
    
 
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(User *) userRegistred:(NSString *) user{
    
    for(User *u in users){
        if([u.userLogin isEqualToString:user]){
            return u;
        }
    };
    return nil;
}

- (IBAction)login:(id)sender {
    NSString *uname = [_username text];
    NSString *psswd = [_password text];
    
    
    for(User *u in users){
        NSLog(@"user %@",u.userLogin);
    }
    //ListViewControler *vc = [[ListViewControler alloc] init];
    
    User *registred = [self userRegistred:uname];
    if (registred != nil && [registred.userPassword isEqualToString:psswd]){
        //NSLog(@"uname: %@ psswd: %@",uname,psswd);
        [self performSegueWithIdentifier:@"logSegue" sender:self];
        
    }
    else{
//      NSLog(@"deu ruim");
    }

}

- (IBAction)registerUser:(id)sender {
    
//    RegisterUser *registerUser = [self.storyboard instantiateViewControllerWithIdentifier: @"registerUser"];
//    [self.navigationController pushViewController:registerUser animated:YES];
    
    [self performSegueWithIdentifier:@"registerUser" sender:self];
}


-(void) addUser:(User *) user{
    [users addObject:user];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"registerUser"]){
        RegisterUser *view = (RegisterUser *)segue.destinationViewController;
        view.delegate = self;
    }
}

@end
