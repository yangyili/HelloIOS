//
//  ViewController.m
//  HelloIOSCopy
//
//  Created by yangyi Li  on 2020/3/24.
//  Copyright © 2020 lyy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickHello:(id)sender {
    NSLog(@"Hello IOS");
    NSString *arr[] = {@"项目构建", @"基础语法", @"应用生命周期", @"视图介绍"};
    NSString *listContent = @"";
    for (int i=0; i<4; i++) {
        listContent = [[NSString alloc] initWithFormat: @"%@ \n %@", listContent, arr[i]];
    }
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Object-c trainning list:" message:listContent preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Close" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        NSLog(@"close alert");
    }];
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}


@end
