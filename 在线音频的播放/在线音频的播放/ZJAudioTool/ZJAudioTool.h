//
//  ZJAudioTool.h
//  ZJAudioTool
//
//  Created by 侯宝伟 on 14/05/24.
//  Copyright © 2014年 ZHUNJIEE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZJAudioTool : NSObject

/**
 *  播放本地音效
 */
+ (void)playSoundWithSoundName:(NSString *)name;

/**
 *  播放URL音乐
 */
+ (void)playMusicWithUrl:(NSString *)urlString;
+ (void)pauseMusicWithUrl:(NSString *)urlString;
+ (void)stopMusicWithUrl:(NSString *)urlString;

/**
 *  播放本地音乐
 */
+ (void)playMusicWithMusicName:(NSString *)musicName;

/**
 *  暂停本地音乐
 */
+ (void)pauseMusicWithMusicName:(NSString *)musicName;

/**
 *  停止本地音乐
 */
+ (void)stopMusicWithMusicName:(NSString *)musicName;

@end
