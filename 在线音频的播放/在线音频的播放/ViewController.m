//
//  ViewController.m
//  在线音频的播放
//
//  Created by 侯宝伟 on 15/11/26.
//  Copyright © 2015年 ZHUNJIEE. All rights reserved.
//

#import "ViewController.h"
#import "ZJAudioTool.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
/** player */
@property (nonatomic, strong) AVPlayer *player;
@end

@implementation ViewController
/** player的懒加载 */
- (AVPlayer *)player{
    if (!_player) {
        _player = [[AVPlayer alloc] init];
    }
    return _player;
}
- (void)viewDidLoad {
    
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [ZJAudioTool playMusicWithUrl:@"http://wvoice.spriteapp.cn/voice/2015/0824/55dafc15020d9.mp3"];
}

@end
