//
//  ChannelsAndChatsViewController+TableView.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/12.
//

import Foundation
import UIKit

extension ChannelsAndChatsViewController {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 260
        } else if indexPath.section == 1 {
            return 200
        } else {
            if indexPath.row == 0 {
                return 40
            }
            return 86
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else {
            return  whatsappMessageArray.count + 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let channelCell = tableView.dequeueReusableCell(withIdentifier: "ChannelsTableViewCellID", for: indexPath) as!
            ChannelsTableViewCell
            return channelCell
        } else if indexPath.section == 1 {
            let statusCell = tableView.dequeueReusableCell(withIdentifier: "StatusTableViewCellID", for: indexPath) as!
            StatusTableViewCell
            return statusCell
        } else {
            if indexPath.row == 0 {
                let archiveCells = tableView.dequeueReusableCell(withIdentifier: "ArchivedTableViewCellsID", for: indexPath)as! ArchivedTableViewCells
                return archiveCells
            } else {
                let chatCell = tableView.dequeueReusableCell(withIdentifier: "red", for: indexPath) as!
                ChatsTableViewCells
                let message = whatsappMessageArray[indexPath.row - 1]
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
                
                // message status checks
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
                
                return chatCell
            }
        }
    }
    
}
    
    
    
    

            
 
            
    
    
    
    
