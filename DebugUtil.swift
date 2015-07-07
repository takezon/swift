//
//  DebugUtil.swift
//
//  Created by Takezon on 2015/07/04.
//

import Foundation

public func TKLog<T>(selfObj: AnyObject, printObj: T,funcname: String = __FUNCTION__) {
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss:SSS"
    let process = NSProcessInfo.processInfo()
    var className = NSStringFromClass(selfObj.dynamicType)
    var range = className.rangeOfString(".")
    className = className.substringFromIndex(range!.endIndex)
    var isMainThread = "SubTh"
    if(NSThread.isMainThread()){
        isMainThread = "MainTh"
    }
    print("\(dateFormatter.stringFromDate(NSDate())) \(process.processName) [\(isMainThread)] \(className).\(funcname):\r\t\(printObj)\n")
}