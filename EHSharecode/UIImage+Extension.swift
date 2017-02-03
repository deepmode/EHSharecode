//
//  UIImage+Extension.swift
//  ProjectA
//
//  Created by Eric Ho on 13/3/2016.
//  Copyright © 2016 Eric Ho. All rights reserved.
//


import Foundation
import UIKit

/* 
note: how to add framework
http://www.rockhoppertech.com/blog/swift-framework-creation/#creation

http://stackoverflow.com/questions/24333981/ios-app-with-framework-crashed-on-device-dyld-library-not-loaded-xcode-6-beta
*/

public extension UIColor {
    public class var randomColor:UIColor {
        let r = CGFloat(arc4random() % 255) / 255.0
        let g = CGFloat(arc4random() % 255) / 255.0
        let b = CGFloat(arc4random() % 255) / 255.0
        return UIColor(red: r, green: g, blue: b, alpha: 0.8)
    }
}

public extension UIImage {
    
    public class func imageWithColor(_ color: UIColor) -> UIImage {
        let rect: CGRect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 1, height: 1), false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
