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
        
        if indexPath.row == 0 {
            return CGFloat (80)
        }
        
        return CGFloat(48)
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
        let settingsCell = tableView.dequeueReusableCell(withIdentifier: "HomeSettingTableViewCellID", for: indexPath) as! HomeSettingTableViewCell
        return settingsCell
    }
    
    
    
    
}
