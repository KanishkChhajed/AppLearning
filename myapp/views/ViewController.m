//
//  ViewController.m
//  myapp
//
//  Created by Zuppers on 28/02/18.
//  Copyright © 2018 Zuppers. All rights reserved.
//

#import "ViewController.h"
#import "ListViewControler.h"
@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)login:(id)sender {
    NSString *uname = [_username text];
    NSString *psswd = [_password text];
    
    //ListViewControler *vc = [[ListViewControler alloc] init];

    if ([uname isEqualToString: @"teste"] && [psswd isEqualToString:@"teste"]){
        //NSLog(@"uname: %@ psswd: %@",uname,psswd);
        [self performSegueWithIdentifier:@"logSegue" sender:self];
        
    }
    else{
        NSLog(@"deu ruim");
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
