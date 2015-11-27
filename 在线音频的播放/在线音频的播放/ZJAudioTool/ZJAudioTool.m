//
//  ZJAudioTool.m
//  ZJAudioTool
//
//  Created by 侯宝伟 on 14/05/24.
//  Copyright © 2014年 ZHUNJIEE. All rights reserved.
//

#import "ZJAudioTool.h"
#import <AVFoundation/AVFoundation.h>

@implementation ZJAudioTool


static NSMutableDictionary *_soundIDs;
static NSMutableDictionary *_players;
static AVPlayer *_player;

+ (void)initialize{
    _soundIDs = [NSMutableDictionary dictionary];
    _players = [NSMutableDictionary dictionary];
}

/**
 *  播放本地音效
 */
+ (void)playSoundWithSoundName:(NSString *)soundName{
    // 1. 取出对应的SystemSoundID
    SystemSoundID soundID = [_soundIDs[soundName] unsignedIntValue];
    
    // 2. 如果之前没有保存过对应的soundID,取出则为0
    if (soundID == 0) {
        // 根据soundName创建soundID
        // 2.1 获取soundName的路径
        CFURLRef url = (__bridge CFURLRef)([[NSBundle mainBundle] URLForResource:soundName withExtension:nil]);
        
        // 2.2 给soundID赋值
        AudioServicesCreateSystemSoundID(url, &soundID);
        
        // 2.3 将soundID保存到字典中
        [_soundIDs setObject:@(soundID) forKey:soundName];
    }
    
    // 3. 播放音效
    AudioServicesPlayAlertSound(soundID);
}


+ (void)playMusicWithUrl:(NSString *)urlString{
    _player = [[AVPlayer alloc] initWithURL:[NSURL URLWithString:urlString]];
    
    [_player play];
}

+ (void)pauseMusicWithUrl:(NSString *)urlString{
    [_player pause];
}


/**
 *  播放本地音乐
 */
+ (void)playMusicWithMusicName:(NSString *)musicName{
    // 1. 取出对应的播放器
    AVAudioPlayer *player = _players[musicName];
    
    // 2. 如果取出为nil,则通过对应url来创建播放器
    if (player == nil) {
        // 2.1 获取资源的url
        NSURL *url = [[NSBundle mainBundle] URLForResource:musicName withExtension:nil];
        
        // 2.2 根据url来创建播放器
        player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        
        // 2.3 将播放器存储到字典中
        [_players setObject:player forKey:musicName];
    }
    
    // 3. 播放音乐
    [player play];
}

/**
 *  暂停本地音乐
 */
+ (void)pauseMusicWithMusicName:(NSString *)musicName{
    // 1. 取出对应的播放器
    AVAudioPlayer *player = _players[musicName];
    
    // 2. 判断是否为nil,如果不为nil,暂停音乐
    if (player) {
        [player pause];
    }
}

/**
 *  停止本地音乐
 */
+ (void)stopMusicWithMusicName:(NSString *)musicName{
    // 1. 取出对应的播放器
    AVAudioPlayer *player = _players[musicName];
    
    // 2. 判断是否为nil,如果不为nil,停止音乐
    if (player) {
        [player stop];
        [_players removeObjectForKey:musicName];
    }
}
@end
