//
//  RootTabBarController.swift
//  ZLife
//
//  Created by 张宗宇 on 2022/3/1.
//

import UIKit

class RootTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        creatSubViewControllers()
    }
    
    func creatSubViewControllers() {
        let newSize = CGRect(x: 0, y: 0, width: 30, height: 30)
        
        let homeVC = HomeViewController()
        let homeImg = CommonTools.tailorImage(image: UIImage(named: "home") ?? UIImage(), newSize: newSize)
        homeVC.tabBarItem = UITabBarItem(title: "首页", image: homeImg, tag: 1)
        
        let naviVC = NavigateViewController()
        let naviImg = CommonTools.tailorImage(image: UIImage(named: "map") ?? UIImage(), newSize: newSize)
        naviVC.tabBarItem = UITabBarItem(title: "地图", image: naviImg, tag: 2)
        
        let mineVC = MineViewController()
        let mineImg = CommonTools.tailorImage(image: UIImage(named: "mine") ?? UIImage(), newSize: newSize)
        mineVC.tabBarItem = UITabBarItem(title: "我的", image: mineImg, tag: 3)
        
        let tabArray = [homeVC, naviVC, mineVC]
        viewControllers = tabArray
        
        tabBar.tintColor = .orange
        tabBar.backgroundColor = .lightGray
    }
}

extension UIImage {
    // 截取部分图片
    func tailorImage(rect: CGRect) -> UIImage{
        var rect = rect
        rect.origin.x *= self.scale
        rect.origin.y *= self.scale
        rect.size.width *= self.scale
        rect.size.height *= self.scale
        let imageRef = self.cgImage!.cropping(to: rect)
        let image = UIImage(cgImage: imageRef!, scale: self.scale, orientation: self.imageOrientation)
        return image
    }
}
