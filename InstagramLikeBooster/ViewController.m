//
//  ViewController.m
//  InstagramLikeBooster
//
//  Created by Le Cong on 10/27/14.
//  Copyright (c) 2014 Lê Công. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PFObject *test = [PFObject objectWithClassName:@"GameScore"];
    test[@"score"] = @1;
    [test saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
