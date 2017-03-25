//
//  STMusicSENavView.h
//  FanweApp
//
//  Created by 岳克奎 on 17/1/14.
//  Copyright © 2017年 xfg. All rights reserved.
//

#import <UIKit/UIKit.h>
//代理将自身的事件传给superView、superViewC
@protocol STMusicSENavViewDeleagte <NSObject>
@optional
-(void)showSTMusicSENavViewOfSEdefaultValue; //恢复所有音效默认值
-(void)closeSTMusicSEViewC;                 //关闭音效功能
@end
@interface STMusicSENavView : UIView <XXNibBridge>
@property (weak, nonatomic) IBOutlet UIButton       *musicSEResumeBtn; //恢复所有音效默认值
@property (weak, nonatomic) IBOutlet UILabel        *musicSETitleLab;  //中间title
@property (weak, nonatomic) IBOutlet UIButton       *msuicSECloseBtn;  //关闭音效功能btn
@property (weak, nonatomic) IBOutlet UILabel        *sparatorLab;     //分割线lab

@property(strong,nonatomic)id<STMusicSENavViewDeleagte>delegate;
@end
