//
//  HomeSettingViewController+TableView.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/06.
//

import Foundation
import UIKit

extension HomeSettingViewController {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            
            if indexPath.row == 0 {
                return 75
            } else {
                return 40
            }
        } else {
            return 40
        }
        
        
        
//        if indexPath.section == 0 && indexPath.row == 0 {
//            return 75
//        } else {
//            return 40
//        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return profileArray.count
        } else if section == 1 {
            return broadcastArray.count
        } else if section == 2 {
            return accountsPrivacyChatsNotificationStorageAndDataArray.count
        } else {
            return helpTellAFriendArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let settingsCell = tableView.dequeueReusableCell(withIdentifier: "HomeSettingTableViewCellID", for: indexPath) as! HomeSettingTableViewCell
            settingsCell.titleLabel.text = profileArray[indexPath.row]
            
            if indexPath.row == 0 {
                settingsCell.accessoryType = .none
                settingsCell.settingsImageView.isHidden = true
                settingsCell.iconNameLabel.isHidden = true
            } else {
                settingsCell.contactImageView.isHidden = true
                settingsCell.titleLabel.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.settingsImageView.image = UIImage(named: "archive_filled_icon")
                settingsCell.iconNameLabel.text = "Avatar"
                settingsCell.qrCodeImageView.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.accessoryType = .disclosureIndicator
            }
            return settingsCell
            
        } else if indexPath.section == 1 {
            let settingsCell = tableView.dequeueReusableCell(withIdentifier: "HomeSettingTableViewCellID", for: indexPath) as! HomeSettingTableViewCell
            settingsCell.iconNameLabel.text = broadcastArray[indexPath.row]
            
            if indexPath.row == 0 {
                settingsCell.contactImageView.isHidden = true
                settingsCell.titleLabel.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.settingsImageView.image = UIImage(named: "archive_filled_icon")
                settingsCell.qrCodeImageView.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.accessoryType = .disclosureIndicator
                
            } else if indexPath.row == 1 {
                settingsCell.contactImageView.isHidden = true
                settingsCell.titleLabel.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.settingsImageView.image = UIImage(named: "archive_filled_icon")
                settingsCell.qrCodeImageView.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.accessoryType = .disclosureIndicator
                
            } else {
                settingsCell.contactImageView.isHidden = true
                settingsCell.titleLabel.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.settingsImageView.image = UIImage(named: "archive_filled_icon")
                settingsCell.qrCodeImageView.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.accessoryType = .disclosureIndicator
            }
            return settingsCell
            
        } else if indexPath.section == 2 {
            let settingsCell = tableView.dequeueReusableCell(withIdentifier: "HomeSettingTableViewCellID", for: indexPath) as! HomeSettingTableViewCell
            settingsCell.iconNameLabel.text = accountsPrivacyChatsNotificationStorageAndDataArray[indexPath.row]
            
            if indexPath.row == 0 {
                settingsCell.contactImageView.isHidden = true
                settingsCell.titleLabel.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.settingsImageView.image = UIImage(named: "archive_filled_icon")
                settingsCell.qrCodeImageView.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.accessoryType = .disclosureIndicator
                
            } else if indexPath.row == 1 {
                settingsCell.contactImageView.isHidden = true
                settingsCell.titleLabel.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.settingsImageView.image = UIImage(named: "archive_filled_icon")
                settingsCell.qrCodeImageView.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.accessoryType = .disclosureIndicator
                
            } else {
                settingsCell.contactImageView.isHidden = true
                settingsCell.titleLabel.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.settingsImageView.image = UIImage(named: "data_drive_logo_icon")
                settingsCell.qrCodeImageView.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.accessoryType = .disclosureIndicator
            }

            return settingsCell
        } else {
            let settingsCell = tableView.dequeueReusableCell(withIdentifier: "HomeSettingTableViewCellID", for: indexPath) as! HomeSettingTableViewCell
            settingsCell.titleLabel.text = helpTellAFriendArray[indexPath.row]
            if indexPath.row == 0 {
                
                settingsCell.contactImageView.isHidden = true
                settingsCell.titleLabel.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.settingsImageView.image = UIImage(named: "315150_information_icon")
                settingsCell.iconNameLabel.text = "Help"
                settingsCell.qrCodeImageView.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.accessoryType = .disclosureIndicator
                
            } else {
                
                settingsCell.contactImageView.isHidden = true
                settingsCell.titleLabel.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.settingsImageView.image = UIImage(named: "heart_icon-6")
                settingsCell.iconNameLabel.text = "Tell a Friend"
                settingsCell.qrCodeImageView.isHidden = true
                settingsCell.descriptionLable.isHidden = true
                settingsCell.accessoryType = .disclosureIndicator
            }
            
            return settingsCell
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
            
        if indexPath.section == 2 && indexPath.row == 4 {
                let storageAndData = StorageAndDataSettingsViewController()
            self.navigationController?.pushViewController(storageAndData, animated: true)
            //self.present(storageAndData, animated: true)
        } else if indexPath.section == 2 {
            let notifications = NotificationsViewController()
            self.navigationController?.pushViewController(notifications, animated: true)
            
        }
    }

}



//func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    
//    if indexPath.section == 0 {
//        let statement
//        
//        if indexPath.row == 1 {
//            execute custom logic accordingly
//        }
//        return let statement
//    
//        
//    } else if section == 1 {
//        let statement
//        
//        if indexPath.row == 2 {
//            execute custom logic accordingly
//            
//        }
//        return let statement
//    } else {
//
//       return statement
//    }
//
//}
    

