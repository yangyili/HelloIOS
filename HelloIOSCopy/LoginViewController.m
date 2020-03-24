//
//  LoginViewController.m
//  HelloIOSCopy
//
//  Created by yangyi Li  on 2020/3/24.
//  Copyright © 2020 lyy. All rights reserved.
//

#import "LoginViewController.h"
#import "AfterLoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
- (IBAction)login:(id)sender {
    NSLog(@"username: %@, password: %@", _username.text, _password.text);
    if ([_username.text isEqualToString:@"lyy"] && [_password.text isEqualToString:@"123"]) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        AfterLoginViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"afterLoginStoryboard"];
        vc.loginUserName = _username.text;
        [self presentViewController:vc animated:YES completion:nil];
    } else {
        NSLog(@"username or password error");
    }
}
- (IBAction)backHomePage:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
