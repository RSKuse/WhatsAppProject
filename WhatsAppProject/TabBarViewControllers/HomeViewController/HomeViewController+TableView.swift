//
//  HomeViewController+TableView.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/02/22.
//

import Foundation
import UIKit

extension HomeViewController {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 40
        } else {
            return 86
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 7
        }
   
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let archiveCell = tableView.dequeueReusableCell(withIdentifier: "ArchivedChatsTableViewCellID", for: indexPath) as!
            ArchivedChatsTableViewCell
            return archiveCell
            
        } else {
            let chatCell = tableView.dequeueReusableCell(withIdentifier: "ChatsTableViewCellID", for: indexPath) as!
            ChatsTableViewCell
            if indexPath.row == 0 {
                chatCell.messageStatusImageView.isHidden = true
                chatCell.photoIconImageView.isHidden = true
                chatCell.markMessagesIconImageView.isHidden = true
                chatCell.verificationIconImageView.isHidden = true
                
            } else if indexPath.row == 1 {
                chatCell.messageStatusImageView.image = UIImage(named: "Group 1-2")?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
                chatCell.messageStatusImageView.tintColor = .systemGray2
                chatCell.photoIconImageView.isHidden = true
                chatCell.markMessagesIconImageView.isHidden = true
                chatCell.verificationIconImageView.isHidden = true
                
            } else if indexPath.row == 2 {
                chatCell.messageStatusImageView.image = UIImage(named: "Group 1-2")
                chatCell.photoIconImageView.isHidden = true
                chatCell.markMessagesIconImageView.isHidden = true
                chatCell.verificationIconImageView.isHidden = true

    
            } else if indexPath.row == 3 {
                chatCell.messageStatusImageView.image = UIImage(named: "ic_missed_call")
                chatCell.photoIconImageView.isHidden = true
                chatCell.markMessagesIconImageView.isHidden = true
                chatCell.verificationIconImageView.isHidden = true
                
                
            } else if indexPath.row == 4 {
                chatCell.messageStatusImageView.image = UIImage(named: "Group 1-3")
                chatCell.photoIconImageView.isHidden = true
                chatCell.markMessagesIconImageView.isHidden = true
                chatCell.verificationIconImageView.isHidden = true

            } else if indexPath.row == 5 {
                chatCell.messageStatusImageView.image = UIImage(named: "ic_voice_call")
                chatCell.photoIconImageView.isHidden = true
                chatCell.markMessagesIconImageView.isHidden = true
                chatCell.verificationIconImageView.isHidden = true
    
            } 
            return chatCell
            
                
            }
            
            
            
        }
    
     
    }
    
    
    
    
    
    





//let archiveCell = tableView.dequeueReusableCell(withIdentifier: "ArchivedChatsTableViewCellID", for: indexPath) as! ArchivedChatsTableViewCell
//
//if indexPath.row == 1 {
//    chatCell.messageStatusImageView.image = UIImage(named: "ic_missed_call")
//}
//if indexPath.row == 2 {
//    
//    chatCell.messageStatusImageView.image = UIImage(named: "Group 1-2")?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
//    chatCell.messageStatusImageView.tintColor = .black
//    
//}
//    
//return chatCell
//}
