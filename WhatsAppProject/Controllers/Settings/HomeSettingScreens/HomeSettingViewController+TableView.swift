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
        
        if indexPath.section == 0
        
        return CGFloat(48)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let settingsCell = tableView.dequeueReusableCell(withIdentifier: "HomeSettingTableViewCellID", for: indexPath) as! HomeSettingTableViewCell
        return settingsCell
    }
    
    
    
    
}
