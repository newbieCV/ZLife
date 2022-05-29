//
//  CommonTools.swift
//  ZLife
//
//  Created by 张宗宇 on 2022/3/1.
//

import UIKit

struct kScreen {
    static let width = CommonTools.screenWidth
    static let height = CommonTools.screenWidth
}

//MARK: 常用工具类

class CommonTools {
    
    // 屏幕宽高
    class func screenWidth() -> CGFloat {
        return UIScreen.main.bounds.width
    }
    
    class func screenHeight() -> CGFloat {
        return UIScreen.main.bounds.height
    }
    
    // 裁剪图片到指定大小
    class func tailorImage(image: UIImage, newSize: CGRect) -> UIImage {
        UIGraphicsBeginImageContext(CGSize(width: newSize.width, height: newSize.height))
        image.draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))
        let newImg = UIGraphicsGetImageFromCurrentImageContext() ?? image
        UIGraphicsEndImageContext()
        return newImg
    }
    
}
