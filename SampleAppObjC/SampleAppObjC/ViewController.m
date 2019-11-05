//
//  ViewController.m
//  SampleAppObjC
//
//  Created by Yigit Caliskan on 5.11.2019.
//  Copyright © 2019 App Samurai Inc. All rights reserved.
//

#import "ViewController.h"
@import ASAttributionSDK;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)onSendSimpleEvent:(id)sender {
    [ASAttribution trackWithEventName:@"Simple Event"];
}

- (IBAction)onSendEventWithData:(id)sender {
    [ASAttribution trackWithEventName:@"Event With Data" data:@{@"sample_data_int": @1,
                                                                @"sample_data_str": @"two",
                                                                @"sample_data_list": @[@"str_data", @3]}];
}

@end
