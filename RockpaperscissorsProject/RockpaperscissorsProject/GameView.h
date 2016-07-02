//
//  GameView.h
//  RockpaperscissorsProject
//
//  Created by 山崎祥太郎 on 2016/07/02.
//  Copyright © 2016年 山崎祥太郎. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GameViewDelegate <NSObject>

-(void)pressButton:(int)buttonId;

@end


@interface GameView : UIView

@property (weak, nonatomic)id<GameViewDelegate> delegate;

-(void)setSerif:(NSString *)serif;

-(void)setHand:(int)handNo;

@end
