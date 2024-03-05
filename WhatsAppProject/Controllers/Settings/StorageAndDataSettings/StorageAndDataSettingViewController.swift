//
//  StorageAndDataSettingsViewController.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/02/22.
//

import Foundation
import UIKit

class StorageAndDataSettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var storageArray = ["Manage Storage"]
    var networkArray = ["Network Usage", "Use Less Data for Calls", "Proxy"]
    var mediaAutoDownloadArray = ["Photos", "Audio", "Video", "Documents", "Reset Auto-Download Settings"]

    
    lazy var storageAndDataTableView: UITableView = {
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
        title = "Storage and Data "
        self.view.backgroundColor = .systemGray4
        
    }
    
    func setupUI() {
        view.addSubview(storageAndDataTableView)
           
        storageAndDataTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        storageAndDataTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        storageAndDataTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        storageAndDataTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    func registerCells() {
        storageAndDataTableView.register(StorageAndDataTableViewCell.self, forCellReuseIdentifier: "StorageAndDataTableViewCellID")
   
    }
}

