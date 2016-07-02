//
//  ViewController.m
//  RockpaperscissorsProject
//
//  Created by 山崎祥太郎 on 2016/06/29.
//  Copyright © 2016年 山崎祥太郎. All rights reserved.
//

#import "ViewController.h"
#import "GameView.h"

@interface ViewController ()

@property (strong, nonatomic)GameView *gameView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINib *nib = [UINib nibWithNibName:@"GameView" bundle:nil];
    _gameView = [nib instantiateWithOwner:self options:nil][0];
    [self.view addSubview:_gameView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
