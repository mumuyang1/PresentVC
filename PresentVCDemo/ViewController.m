//
//  ViewController.m
//  PresentVCDemo
//
//  Created by Yanzi Li on 1/11/16.
//  Copyright © 2016 Yanzi Li. All rights reserved.
//

#import "ViewController.h"
#import "PresentedViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onclickButton:(id)sender {
    PresentedViewController *vc = [[PresentedViewController alloc] init];
    
    self.modalPresentationStyle = UIModalPresentationCurrentContext;// set presenting vc modalPresentationStyle
    //
    //    UIModalPresentationFullScreen = 0,
    //    UIModalPresentationPageSheet,
    //    UIModalPresentationFormSheet,
    //    UIModalPresentationCurrentContext
    
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical; // set presented vc modalTransitionStyle
   
    //
    //    UIModalTransitionStyleFlipHorizontal,
    //    UIModalTransitionStyleCrossDissolve,
    //    UIModalTransitionStylePartialCurl,  
    [self presentViewController:vc animated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
