//
//  NotificationsViewController+TableView.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/08.
//

import Foundation
import UIKit


extension NotificationsViewController {
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 0
        } else if section == 1 {
            return messageNotificationArray.count
        } else if section == 2 {
            return groupNotificationArray.count
        } else if section == 3 {
            return manageNotificationArray.count
        } else if section == 4 {
            return managePreviewMessageNotificationArray.count
        } else {
            return manageResetNotificationSettingArray.count
        }
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let sectionView = TableSectionHeaderView()
            let separatorView = UIView()
            sectionView.titleLabel.text = "WARNING: Push Notifications are disabled. To enable visit. iPhone Settings > Notifications > WhatsApp"
            sectionView.titleLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
            sectionView.titleLabel.textAlignment = .center
            separatorView.backgroundColor = UIColor.gray
            separatorView.translatesAutoresizingMaskIntoConstraints = false
            sectionView.addSubview(separatorView)
              
            // Constraints
            separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
            separatorView.leadingAnchor.constraint(equalTo: sectionView.leadingAnchor, constant: 10).isActive = true
            separatorView.trailingAnchor.constraint(equalTo: sectionView.trailingAnchor, constant: -10).isActive = true
            separatorView.bottomAnchor.constraint(equalTo: sectionView.bottomAnchor).isActive = true
            return sectionView
            
        } else if section == 1 {
            let sectionView = TableSectionHeaderView()
            sectionView.titleLabel.text = "MESSAGE NOTIFICATIONS"
            sectionView.titleLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
            return sectionView
       
        } else if section == 2 {
            let sectionView = TableSectionHeaderView()
            sectionView.titleLabel.text = "GROUP NOTIFICATIONS"
            sectionView.titleLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
            return sectionView
            
        } else {
            return nil
        }
            
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return CGFloat(48.0)
        }
        return CGFloat (48.0)
        }
    
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
       
        if section == 4 {
            let footerView = TableSectionHeaderView()
            footerView.titleLabel.text = "Preview message text inside new message notifications."
            footerView.titleLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
            footerView.titleLabel.textAlignment = .left
            return footerView
            
        } else if section == 5 {
            let footerView = TableSectionHeaderView()
            footerView.titleLabel.text = "Reset all notification settings, including custom notification settings for your chats"
            footerView.titleLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
            footerView.titleLabel.textAlignment = .left
            return footerView
        } else {
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 4 {
            return CGFloat(30.0)
            
        } else if section == 5 {
            return CGFloat(40.0)
            
        } else {
            return CGFloat(0)
        }
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 1 {
            let notificationCell = tableView.dequeueReusableCell(withIdentifier: "NotificationsTableViewCellID", for: indexPath) as! NotificationsTableViewCell
            notificationCell.titleLabel.text = messageNotificationArray[indexPath.row]
            if indexPath.row == 1 {
                notificationCell.soundTypeLable.text = "None"
                notificationCell.accessoryType = .disclosureIndicator
                notificationCell.notificationSwitch.isHidden = true
            } else {
                notificationCell.accessoryType = .none
            }
            return notificationCell
            
        } else if indexPath.section == 2 {
            let notificationCell = tableView.dequeueReusableCell(withIdentifier: "NotificationsTableViewCellID", for: indexPath) as! NotificationsTableViewCell
            notificationCell.titleLabel.text = groupNotificationArray[indexPath.row]
            return notificationCell
            
        } else if indexPath.section == 3 {
            let notificationCell = tableView.dequeueReusableCell(withIdentifier: "NotificationsTableViewCellID", for: indexPath) as! NotificationsTableViewCell
            notificationCell.titleLabel.text = manageNotificationArray[indexPath.row]
            notificationCell.backgroundColor = UIColor.white
            notificationCell.accessoryType = .disclosureIndicator
            notificationCell.titleLabel.textColor = UIColor.black
            notificationCell.notificationSwitch.isHidden = true
            return notificationCell
            
        } else if indexPath.section == 4 {
            let notificationCell = tableView.dequeueReusableCell(withIdentifier: "NotificationsTableViewCellID", for: indexPath) as! NotificationsTableViewCell
            notificationCell.titleLabel.text = managePreviewMessageNotificationArray[indexPath.row]
            return notificationCell
            
        } else {
            let notificationCell = tableView.dequeueReusableCell(withIdentifier: "NotificationsTableViewCellID", for: indexPath) as! NotificationsTableViewCell
            notificationCell.titleLabel.text = manageResetNotificationSettingArray[indexPath.row]
            notificationCell.backgroundColor = UIColor.white
            notificationCell.accessoryType = .none
            notificationCell.titleLabel.textColor = UIColor.systemRed
            notificationCell.notificationSwitch.isHidden = true
            return notificationCell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(48.0)
    }
    

}


