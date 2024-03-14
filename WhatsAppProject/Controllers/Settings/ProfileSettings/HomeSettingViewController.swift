//
//  HomeSettingViewController.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/06.
//

import Foundation
import UIKit

class HomeSettingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var profileArray = ["Kuse", "Avatar"]
    var broadcastArray = ["Broadcast Lists", "Starred Messages", "Linked Devices"]
    var accountsPrivacyChatsNotificationStorageAndDataArray = ["Account", "Privacy", "Chats", "Notifications", "Storage and Data"]
    var helpTellAFriendArray = ["Help", "Tell a Friend"]
 
    lazy var settingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    
    }()
    
//    lazy var qrView: QRCodeContainerView = {
//        let view = QRCodeContainerView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        self.view.backgroundColor = .systemGray4
        setupUI()
        registerCell()
  
    }
    
    func setupUI() {
        view.addSubview(settingsTableView)
        
        settingsTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        settingsTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        settingsTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        settingsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    
    }
    
    func registerCell() {
        settingsTableView.register(HomeSettingTableViewCell.self, forCellReuseIdentifier: "HomeSettingTableViewCellID")   
    }
    
    
    
}
