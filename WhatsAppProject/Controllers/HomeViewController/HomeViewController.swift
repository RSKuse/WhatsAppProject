//
//  HomeViewController.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/02/22.
//

import UIKit
class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let loggedInUser = WhatsappUser(profileImage: UIImage(named: "Thando")!, name: "Thando")
    

    
    let whatsappMessageArray :[WhatsappMessage] = [
        WhatsappMessage(messageId: "1233", sender: WhatsappUser(profileImage: UIImage(named: "Thando")!, name: "Thando"), receiver: WhatsappUser(profileImage: UIImage(named: "Maximmilian")!, name: "Max", isVerified: false), timestamp: Date(), messageText: "We need to change something. Or we need to do it ngenye inglela", attachments: [], messageType: "TEXT", messageStatus: "READ"),
        
        WhatsappMessage(messageId: "2453", sender: WhatsappUser(profileImage: UIImage(named: "karennne")!, name: "karennne", isVerified: true), receiver: WhatsappUser(profileImage: UIImage(named: "Thando")!, name: "Thando"), timestamp: Date(), messageText: "", attachments: [], messageType: "MISSED_VOICE_CALL", messageStatus: "NONE"),
        
(        WhatsappMessage(messageId: "2473", sender: WhatsappUser(profileImage: UIImage(named: "Thando")!, name: "Thando"), receiver: WhatsappUser(profileImage: UIImage(named: "Tabitha Potter")!, name: "Tabitha Potter"), timestamp: Date(), messageText: "", attachments: [], messageType: "OUT_GOING_VOICE_CALL", messageStatus: "NONE")
),
        WhatsappMessage(messageId: "2473", sender: WhatsappUser(profileImage: UIImage(named: "Thando")!, name: "Thando"), receiver: WhatsappUser(profileImage: UIImage(named: "Martha Craig")!, name: "Martha Craig", isVerified: true), timestamp: Date(), messageText: "Great. Chat tomorrow at 11", attachments: [], messageType: "TEXT", messageStatus: "UNREAD"),
        
        WhatsappMessage(messageId: "2473", sender: WhatsappUser(profileImage: UIImage(named: "Thando")!, name: "Thando"), receiver: WhatsappUser(profileImage: UIImage(named: "kiero_d")!, name: "kiero_d"), timestamp: Date(), messageText: "", attachments: [], messageType: "PHOTO", messageStatus: "READ")

    ]
    
    
    
//    var whatsappChatArray: [WhatsappChatModel] = [
//        WhatsappChatModel(senderImage: UIImage(named: "Tabitha Potter")!, senderIcon: UIImage(named: "Group 1-2")!, markReadIcon: UIImage(named: "Ellipse 6")!, senderName: "Tabitha Potter", senderLastMessage: "We need to change something. Or we need to do it ngenye inglela. I just le...", lastMessageTimeStamp: "05:16"),
//        WhatsappChatModel(senderImage: UIImage(named: "Maximmilian")!, senderIcon: UIImage(named: "Group 1-2")!, markReadIcon: UIImage(named: "Ellipse 6")!, senderName: "Nkosenhle", senderLastMessage: "Sharp Sharp. No stress.", lastMessageTimeStamp: "Yesterday"),
//        WhatsappChatModel(senderImage: UIImage(named: "karennne")!, senderIcon: UIImage(named: "ic_missed_call")!, markReadIcon: UIImage(named: "Ellipse 6")!, senderName: "Kimberley", senderLastMessage: "Sharp Sharp. No stress.", lastMessageTimeStamp: "Tuesday")
//    ]
 
    
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


// creat all the other messages in the array, use different message status to ensure different icons. modify the status
