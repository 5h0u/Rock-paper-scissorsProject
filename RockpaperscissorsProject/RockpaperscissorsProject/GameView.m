//
//  GameView.m
//  RockpaperscissorsProject
//
//  Created by 山崎祥太郎 on 2016/07/02.
//  Copyright © 2016年 山崎祥太郎. All rights reserved.
//

#import "GameView.h"

@interface GameView()

@property (weak, nonatomic)IBOutlet UIButton *rockButton;
@property (weak, nonatomic)IBOutlet UIButton *paperButton;
@property (weak, nonatomic)IBOutlet UIButton *scissorsButton;
@property (strong, nonatomic)IBOutlet UILabel *serifLabel;

@end

@implementation GameView

-(id)init{
    self=[super init];
    if(self){
        [_rockButton addTarget:self action:@selector(pressRockButton) forControlEvents:UIControlEventTouchDown];
        [_paperButton addTarget:self action:@selector(pressPaperButton) forControlEvents:UIControlEventTouchDown];
        [_scissorsButton addTarget:self action:@selector(pressScissorsButton) forControlEvents:UIControlEventTouchDown];
    }
    return self;
}

-(void)setSerif:(NSString *)serif{
    _serifLabel.text = serif;
    
    [self setNeedsUpdateConstraints];
}

-(void)pressRockButton{
    [self.delegate pressButton:0];
}

-(void)pressPaperButton{
    [self.delegate pressButton:1];
}

-(void)pressScissorsButton{
    [self.delegate pressButton:2];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
