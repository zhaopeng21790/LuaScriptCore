//
//  LSCTNativeData.swift
//  Sample
//
//  Created by 冯鸿杰 on 2017/4/17.
//  Copyright © 2017年 vimfung. All rights reserved.
//

import UIKit
import LuaScriptCore_iOS_Swift

@objc(LSCTNativeData)
class LSCTNativeData: NSObject, LuaExportType
{
    @objc var dataId : String? = nil;
    
    private var _data : Dictionary<String, String> = Dictionary();
    
    @objc public class func createData () -> LSCTNativeData
    {
        return LSCTNativeData();
    }
    
    @objc public func setData(value : String, key : String) -> Void
    {
        _data[key] = value;
    }
    
    @objc public func getData(key : String) -> String
    {
        return _data[key]!;
    }
}
