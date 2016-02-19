//
//  NSString+Path.swift
//  Weibo
//
//  Created by 侯宝伟 on 16/2/1.
//  Copyright © 2016年 ZHUNJIEE. All rights reserved.
//

import UIKit

extension String {
    /// 返回文档目录路径
    func docDir() -> String {
        let docPath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last!
        
        return (docPath as NSString).stringByAppendingPathComponent((self as NSString).pathComponents.last!)
    }
    
    /// 返回缓存目录路径
    func cacheDir() -> String {
        let cachePath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.CachesDirectory, NSSearchPathDomainMask.UserDomainMask, true).last!
        
        return (cachePath as NSString).stringByAppendingPathComponent((self as NSString).pathComponents.last!)
    }
    
    /// 返回临时目录路径
    func tmpDir() -> String {
        let tmpPath = NSTemporaryDirectory()
        return (tmpPath as NSString).stringByAppendingPathComponent((self as NSString).pathComponents.last!)
    }
    
}