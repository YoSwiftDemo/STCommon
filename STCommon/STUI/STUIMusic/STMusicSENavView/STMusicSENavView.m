//
//  STMusicSENavView.m
//  FanweApp
//
//  Created by 岳克奎 on 17/1/14.
//  Copyright © 2017年 xfg. All rights reserved.
//

#import "STMusicSENavView.h"

@implementation STMusicSENavView


#pragma mark ----------------------------- life cycle
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
    }
    return self;
}
-(void)awakeFromNib{
    [super awakeFromNib];
}

#pragma mark ------------------------event response 事件响应------------------

//恢复所有音效默认值
- (IBAction)musicSEResumeClick:(UIButton *)sender {
    if (_delegate && [_delegate respondsToSelector:@selector(showSTMusicSENavViewOfSEdefaultValue)]) {
        [_delegate showSTMusicSENavViewOfSEdefaultValue];
    }
}
    //关闭音效功能
- (IBAction)musicSECloseClick:(UIButton *)sender {
    if (_delegate&&[_delegate respondsToSelector:@selector(closeSTMusicSEViewC)]) {
        [_delegate closeSTMusicSEViewC];
    }
}

#pragma mark ------------------------ set 区域-------------------------------
//特别是多个代理，这个貌似必须写
-(void)setDelegate:(id<STMusicSENavViewDeleagte>)delegate{
    _delegate = delegate;
}

@end
