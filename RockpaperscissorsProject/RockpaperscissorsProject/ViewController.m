//
//  ViewController.m
//  RockpaperscissorsProject
//
//  Created by 山崎祥太郎 on 2016/06/29.
//  Copyright © 2016年 山崎祥太郎. All rights reserved.
//

#import "ViewController.h"
#import "GameView.h"

@interface ViewController ()<GameViewDelegate>

@property (strong, nonatomic)GameView *gameView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINib *nib = [UINib nibWithNibName:@"GameView" bundle:nil];
    _gameView = [nib instantiateWithOwner:self options:nil][0];
    _gameView.delegate = self;
    [_gameView init];
    [self.view addSubview:_gameView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(int)enemyHand{
    int hand = (int)arc4random_uniform(1000)%3;
    [_gameView setHand:hand];
    return hand;
}

-(void)judge:(int)enemyHand player:(int)playerHand{
    //あいこ
    if(enemyHand == playerHand){
      //あいこ処理
        [_gameView setSerif:@"あいこ"];
    }else{
        //相手がパーの時
        if(enemyHand == 0){
            if(playerHand == 1){
                //勝ち
                [_gameView setSerif:@"あなたの勝ち"];
            }else{ //player = 2
                //負け
                [_gameView setSerif:@"あなたの負け"];
            }
        }else if(enemyHand == 1){
            if(playerHand == 2){
                //勝ち
                [_gameView setSerif:@"あなたの勝ち"];
            }else{ //player = 0
                //負け
                [_gameView setSerif:@"あなたの負け"];
            }
        }else{
            if(playerHand == 0){
                //勝ち
                [_gameView setSerif:@"あなたの勝ち"];
            }else{ //player = 1
                //負け
                [_gameView setSerif:@"あなたの負け"];
            }
        }
    }
}

-(void)pressButton:(int)buttonId{
    [self judge:[self enemyHand] player:buttonId];
}

@end
