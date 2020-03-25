//
//  MovieViewController.m
//  HelloIOSCopy
//
//  Created by yangyi Li  on 2020/3/24.
//  Copyrigh    t © 2020 lyy. All rights reserved.
//
#import <AFNetworking/AFNetworking.h>
#import "MovieViewController.h"
#import "MovieTableViewCell.h"

@interface MovieViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) NSMutableArray *movies;
@property int movieCount;

@end

@implementation MovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self getMovies];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) getMovies {
    NSURL *movieUrl = [NSURL URLWithString:@"https://api.douban.com/v2/movie/top250"];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSDictionary *params = @{@"apikey": @"0df993c66c0c636e29ecbb5344252a4a"};
    [manager GET:movieUrl.absoluteString parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        self.movieCount = (int)[responseObject count];
        NSLog(@"set movie count: %d", self.movieCount);
        NSLog(@"responseobject: %@", responseObject);
//        NSLog(responseObject.subjects);
//        self.movies = [NSMutableArray array];
//        int count = responseObject.count;
//        for (int i=0; i< count; i++) {
//            NSMutableDictionary *movie =
//        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"get movies error: %@", error);
    }];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MovieTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"movie"];
    if(!cell) {
        cell = [[MovieTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"moview"];
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"tablecell count: %d", self.movieCount);
    return self.movieCount;
}

@end
