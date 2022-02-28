//
//  CommonTools.swift
//  ZLife
//
//  Created by 张宗宇 on 2022/3/1.
//

import UIKit

class CommonTools {
    // 裁剪图片到指定大小
    class func tailorImage(image: UIImage, newSize: CGRect) -> UIImage {
        UIGraphicsBeginImageContext(CGSize(width: newSize.width, height: newSize.height))
        image.draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))
        let newImg = UIGraphicsGetImageFromCurrentImageContext() ?? image
        UIGraphicsEndImageContext()
        return newImg
    }
}
