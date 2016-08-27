//
//  UIApplication+AppVersion.swift
//  iOS-FTExtension-Swift
//
//  Created by luckytantanfu on 8/27/16.
//  Copyright © 2016 futantan. All rights reserved.
//

import UIKit

extension UIApplication {

    static var appVersion: String {
        if let appVersion = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleShortVersionString") {
            return "\(appVersion)"
        } else {
            return ""
        }
    }

    static var build: String {
        if let buildVersion = NSBundle.mainBundle().objectForInfoDictionaryKey(kCFBundleVersionKey as String) {
            return "\(buildVersion)"
        } else {
            return ""
        }
    }

    static var versionBuild: String {
        let version = UIApplication.appVersion
        let build = UIApplication.build

        var versionAndBuild = "v\(version)"

        if version != build {
            versionAndBuild = "v\(version)(\(build))"
        }

        return versionAndBuild
    }

}
