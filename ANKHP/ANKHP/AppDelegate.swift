//
//  AppDelegate.swift
//  ANKHP
//
//  Created by mac on 2023/8/15.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow()
        let tabBarController = MainViewController()
        // Make the Tab Bar Controller the root view controller
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()

        return true
    }
}
