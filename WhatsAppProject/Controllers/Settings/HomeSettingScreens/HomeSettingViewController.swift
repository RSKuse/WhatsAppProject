//
//  HomeSettingViewController.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/06.
//

import Foundation
import UIKit

class HomeSettingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    
    lazy var settingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        self.view.backgroundColor = .systemGray4
        setupUI()
  
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
