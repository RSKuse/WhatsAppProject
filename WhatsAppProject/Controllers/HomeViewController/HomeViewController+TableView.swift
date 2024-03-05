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
            return whatsappMessageArray.count
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
            let message = whatsappMessageArray[indexPath.row]
            chatCell.contactImageView.image = message.receiver.profileImage
            chatCell.nameLabel.text = message.receiver.name
            
            
            // receiver verification check
            if message.receiver.isVerified == true {
                chatCell.verificationIconImageView.isHidden = false
            
                
            }
            // message type checks
            if message.messageType == .incomingVoiceCall {
                chatCell.sentPhotoIconImageView.image = UIImage(named: "ic_missed_call")
                chatCell.sentPhotoIconImageView.isHidden = false
                chatCell.recentMessageLabel.text = "Missed voice call"
                
            } else if message.messageType == .text {
                chatCell.recentMessageLabel.text = message.messageText
                
            } else if message.messageType == .outgoingVoiceCall {
                chatCell.sentPhotoIconImageView.image = UIImage(named: "Outgoing_Voice_Calls")
                chatCell.sentPhotoIconImageView.isHidden = false
                chatCell.recentMessageLabel.text = "Voice call"
                
            } else if message.messageType == .photo {
                chatCell.sentPhotoIconImageView.image = UIImage(named: "ic_camera-2")
                chatCell.sentPhotoIconImageView.isHidden = false
                chatCell.recentMessageLabel.text = "Photo"
                chatCell.unreadIndicatorView.layer.isHidden = false
                
            }

            
            // message status check
            if message.messageStatus == .delivered {
                chatCell.messageStatusImageView.image = UIImage(named: "Group 1-2")?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
                chatCell.messageStatusImageView.tintColor = .systemGray2
                chatCell.messageStatusImageView.isHidden = false
                
            } else if message.messageStatus == .sent {
                chatCell.messageStatusImageView.image = UIImage(named: "Group 1-2")
                chatCell.messageStatusImageView.isHidden = false
                
            } else if message.messageStatus == .read {
                chatCell.messageStatusImageView.image = UIImage(named: "Group 1-3")
                chatCell.messageStatusImageView.isHidden = false
                
                
            }

        
           /*
            if indexPath.row == 0 {
                chatCell.messageStatusImageView.isHidden = true
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
            */
            return chatCell
            
                
            }
            
            
            
        }
    
}
    
    
    
    
