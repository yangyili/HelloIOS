
//
//  AfterLoginViewController.m
//  HelloIOSCopy
//
//  Created by yangyi Li  on 2020/3/24.
//  Copyright © 2020 lyy. All rights reserved.
//

#import "AfterLoginViewController.h"

@interface AfterLoginViewController ()
@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;

@end

@implementation AfterLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.welcomeLabel.text = [NSString stringWithFormat:@"Welcome %@", self.loginUserName];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)backLoginPage:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
