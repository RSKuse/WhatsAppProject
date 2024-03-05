//
//  TabBarControllers.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/02/22.
//

import Foundation
import UIKit


class TabBarController: UITabBarController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupTabBar()
        setupViewControllers()
        selectedIndex = 3
    }
    
    func setupTabBar() {
        tabBar.isTranslucent = false
        tabBar.barTintColor = UIColor.white
    }
    
    func setupViewControllers() {
        
        let updateTabBarItem = UITabBarItem(title: "Updates",
                                          image: UIImage(named: "icon_messages"),
                                          selectedImage: UIImage(named: "icon_messages_selected"))
        let updatesController = UINavigationController(rootViewController: UpdateViewController())
        updatesController.tabBarItem = updateTabBarItem
        
      
        let callsTabBarItem = UITabBarItem(title: "Calls",
                                            image: UIImage(named: "icon_Search"),
                                              selectedImage: UIImage(named: "icon_selected_search"))
        let callsController = UINavigationController(rootViewController: CallsViewController())
        callsController.tabBarItem = callsTabBarItem
        
        let communitiesBarItem = UITabBarItem(title: "Communities",
                                              image: UIImage(named: "icon_notification"),
                                              selectedImage: UIImage(named: "icon_notification_selected"))
        let communitiesController = UINavigationController(rootViewController: CommunitiesViewController())
        communitiesController.tabBarItem = communitiesBarItem
        
        
        let chatsTabBarItem = UITabBarItem(title: "Chats",
                                              image: UIImage(named: "icon_home"),
                                              selectedImage: UIImage(named: "icon_home_selected"))
        let chatsController = UINavigationController(rootViewController: HomeViewController())
        chatsController.tabBarItem = chatsTabBarItem
       
        let settingsTabBarItem = UITabBarItem(title: "Settings",
                                              image: UIImage(named: "icon_messages"),
                                              selectedImage: UIImage(named: "icon_messages_selected"))
        let settingController = UINavigationController(rootViewController: StorageAndDataSettingsViewController())
        settingController.tabBarItem = settingsTabBarItem
        
        self.viewControllers = [updatesController, callsController, communitiesController, chatsController, settingController]
        
    }
}
