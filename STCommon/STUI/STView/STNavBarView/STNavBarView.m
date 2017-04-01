//
//  STNavBarView.m
//  FanweApp
//
//  Created by 岳克奎 on 17/3/30.
//  Copyright © 2017年 xfg. All rights reserved.
//

#import "STNavBarView.h"

@implementation STNavBarView

#pragma mark ************************** life cycle ***********************
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
    }
    return self;
}
-(void)awakeFromNib{
    [super awakeFromNib];
}
#pragma mark *********************** Event Response ***********************
#pragma mark -- left btn click
- (IBAction)leftBtnEvent:(UIButton *)sender {
    if (_delegate  && [_delegate respondsToSelector:@selector(showEventResponseOfLeftBtnOnSTNavCView:)]) {
        [_delegate showEventResponseOfLeftBtnOnSTNavCView:self];
    }
}
#pragma mark -- right btn click
- (IBAction)rightBtnEvent:(UIButton *)sender {
    if (_delegate  && [_delegate respondsToSelector:@selector(showEventResponseOfRightBtnOnSTNavCView:)]) {
        [_delegate showEventResponseOfRightBtnOnSTNavCView:self];
    }
}
#pragma mark *********************** Setter *******************************
#pragma mark -- deleagte
-(void)setDelegate:(id<STNavBarViewDelegate>)delegate{
    _delegate = delegate;
}

@end
