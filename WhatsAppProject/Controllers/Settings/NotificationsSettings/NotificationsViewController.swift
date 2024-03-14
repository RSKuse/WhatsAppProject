//
//  NotificationsViewController.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/08.
//

import Foundation
import UIKit

class NotificationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var messageNotificationArray = ["Show Notifications", "Sound", "Reaction Notifications"]
    var groupNotificationArray = ["Show Notifications", "Reaction Notifications"]
    var manageNotificationArray = ["In-App Notification"]
    var managePreviewMessageNotificationArray = ["Show Preview"]
    var manageResetNotificationSettingArray = ["Reset Notification Settings"]
    
    lazy var notificationTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        registerCells()
        title = "Notifications"
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        view.addSubview(notificationTableView)
        notificationTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        notificationTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        notificationTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        notificationTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func registerCells() {
        notificationTableView.register(NotificationsTableViewCell.self, forCellReuseIdentifier: "NotificationsTableViewCellID")
    }

}
