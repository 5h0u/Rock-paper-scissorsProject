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
@property (weak, nonatomic)IBOutlet UILabel *serifLabel;

@end

@implementation GameView

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [_rockButton addTarget:self action:@selector(pressRockButton) forControlEvents:UIControlEventTouchDown];
        [_paperButton addTarget:self action:@selector(pressPaperButton) forControlEvents:UIControlEventTouchDown];
        [_scissorsButton addTarget:self action:@selector(pressScissorsButton) forControlEvents:UIControlEventTouchDown];
    }
    return self;
}

-(void)pressRockButton{
    
}

-(void)pressPaperButton{
    
}

-(void)pressScissorsButton{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
