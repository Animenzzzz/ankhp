//
//  MainViewController.swift
//  ANKHP
//
//  Created by mac on 2023/8/22.
//

import Foundation

import UIKit

class MainViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        initTabBar()
    }
    
    func initTabBar() {
        let home = HomeViewController()
        home.tabBarItem.title = "home"

        let profile = ProfileViewController()
        profile.tabBarItem.title = "profile"



        viewControllers = [home, profile]

        // 设置 tabBar & tabBarItem
        setTabBarItemAttributes(bgColor: UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1))
    }

    /// 这种方式比较灵活
    func setTabBarItemAttributes(fontName: String = "Courier",
                                 fontSize: CGFloat = 14,
                                 normalColor: UIColor = .gray,
                                 selectedColor: UIColor = .red,
                                 bgColor: UIColor = .white)
    {
        // tabBarItem 文字大小
        var attributes: [NSAttributedString.Key: Any] = [.font: UIFont(name: fontName, size: fontSize)!]

        // tabBarItem 文字默认颜色
        attributes[.foregroundColor] = normalColor
        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .normal)

        // tabBarItem 文字选中颜色
        attributes[.foregroundColor] = selectedColor
        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .selected)

        // tabBar 文字、图片 统一选中高亮色
        tabBar.tintColor = selectedColor

        // tabBar 背景色
        tabBar.barTintColor = bgColor
    }
}
