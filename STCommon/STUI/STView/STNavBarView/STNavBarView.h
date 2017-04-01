//
//  STNavBarView.h
//  FanweApp
//
//  Created by 岳克奎 on 17/3/30.
//  Copyright © 2017年 xfg. All rights reserved.
//

#import "STBaseView.h"
@class STNavBarView;
@protocol STNavBarViewDelegate <NSObject>
@optional
-(void)showEventResponseOfLeftBtnOnSTNavCView:(STNavBarView *)stNavBarView;
-(void)showEventResponseOfRightBtnOnSTNavCView:(STNavBarView *)stNavBarView;
@end
@interface STNavBarView : STBaseView
@property (weak, nonatomic) IBOutlet UIButton         *leftBtn;
@property (weak, nonatomic) IBOutlet UIButton         *rightBtn;
@property (weak, nonatomic) IBOutlet UILabel          *titleLab;
@property (weak, nonatomic) IBOutlet UIView           *separatorView;
@property (weak, nonatomic) id <STNavBarViewDelegate> delegate;
@end
