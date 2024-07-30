//
//  ViewController.m
//  RTImageX
//
//  Created by Apple on 2022/2/23.
//

#import "ViewController.h"
#import <SDWebImage/SDWebImage.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for(NSInteger index = 0; index < 4; index++) {
        NSString *imageNamed = [NSString stringWithFormat:@"index_%ld",(long)index];
        UIImageView *imageView = [UIImage sd_decodedImageWithImage:[UIImage imageNamed:imageNamed]];
        imageView.frame = CGRectMake(index * 60, 100, 50, 100);
        [self.view addSubview:imageView];
    }
}


@end
