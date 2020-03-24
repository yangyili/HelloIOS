//
//  MovieTableViewCell.h
//  HelloIOSCopy
//
//  Created by yangyi Li  on 2020/3/24.
//  Copyright © 2020 lyy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cover;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *intro;

@end
