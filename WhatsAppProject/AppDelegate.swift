//
//  AppDelegate.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/02/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.tintColor = UIColor(red: 0.298, green: 0.62, blue: 0.922, alpha: 1)
        //window?.rootViewController = UINavigationController(rootViewController: HomeViewController())
        //window?.rootViewController = MessagesViewController()
        //window?.rootViewController = NotificationsViewController()
        window?.rootViewController = TabBarController()
        //window?.rootViewController = HomeViewController()
        return true
    }

}

