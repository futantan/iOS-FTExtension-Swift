//
//  UIImage+FTExtension.swift
//  iOS-FTExtension-Swift
//
//  Created by luckytantanfu on 3/14/16.
//  Copyright © 2016 futantan. All rights reserved.
//

import UIKit

extension UIImage {
  /**
   get rounded corner image without trigger offscreen-render
   
   - parameter radius: The radius to use when drawing rounded corners for the layer’s background.
   
   - returns: instance of UIImage with target radius corner
   */
  func ft_imageWithCornerRadius(radius: CGFloat) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(self.size, false, UIScreen.mainScreen().scale)
    
    let rect = CGRectMake(0, 0, self.size.width, self.size.height)
    CGContextAddPath(UIGraphicsGetCurrentContext(), UIBezierPath(roundedRect: rect, cornerRadius: radius).CGPath)
    CGContextClip(UIGraphicsGetCurrentContext())
    
    self.drawInRect(rect)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    
    UIGraphicsEndImageContext()
    return image
  }
}
