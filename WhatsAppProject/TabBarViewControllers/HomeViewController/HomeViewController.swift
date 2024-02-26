//
//  HomeViewController.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/02/22.
//

import UIKit
class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    lazy var whatsappTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsSelection = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    lazy var addClickButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "ic_add")
        button.setImage(icon, for: .normal)
        button.clipsToBounds = true
        button.imageView?.contentMode = .scaleToFill
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var cameraClickButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "ic_camera")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var selectClickButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(named: "ic_more")
        button.setImage(icon, for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Chats"
        setupUI()
        setupNavigationBar()
        registerCell()
      
    }
    
    func setupNavigationBar() {
        
        let addBarButton = UIBarButtonItem(customView: addClickButton)
        let cameraBarButton = UIBarButtonItem(customView: cameraClickButton)
        let selectBarButton = UIBarButtonItem(customView: selectClickButton)
        
        addClickButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        addClickButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        selectClickButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        selectClickButton.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        navigationItem.rightBarButtonItems = [addBarButton, cameraBarButton]
        navigationItem.leftBarButtonItems = [selectBarButton]
        
    }
    
    func setupUI() {
        view.addSubview(whatsappTableView)
        
        whatsappTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        whatsappTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        whatsappTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        whatsappTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
    
    func registerCell() {
        whatsappTableView.register(ChatsTableViewCell.self, forCellReuseIdentifier: "ChatsTableViewCellID")
        whatsappTableView.register(ArchivedChatsTableViewCell.self, forCellReuseIdentifier: "ArchivedChatsTableViewCellID")
        
    }
    
    


}
