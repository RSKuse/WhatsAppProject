//
//  StorageAndDataSettingsViewController+TableView.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/05.
//

import Foundation
import UIKit


extension StorageAndDataSettingsViewController {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return storageArray.count
        } else if section == 1 {
            return networkArray.count
            
        } else {
            return mediaAutoDownloadArray.count
        }
    }
    
    /*
    - How to setup the view for header in section.
     */
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            let whatsappHelpGraphic = WhatsappHelpGraphicView()
            return whatsappHelpGraphic
        } else if section == 1 {
            let sectionView = TableSectionHeaderView()
            sectionView.titleLabel.text = "NETWORK"
            return sectionView
        } else {
            let sectionView = TableSectionHeaderView()
            sectionView.titleLabel.text = "MEDIA AUTO-DOWNLOAD"
            return sectionView
        }
    }
    
    /*
     - How to setup up the height for the header in section
     */
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return CGFloat(500.0)
        }
        return CGFloat(48.0)
    }
    
    /*
     - How to setup up the view for header in section
     */
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 2 {
            let footerView = TableSectionHeaderView()
            footerView.titleLabel.text = "Voice Messages are always automatically download"
            return footerView
        }
        return nil // Because the returned type is optional i.e. UIView"?", you can return a nil value i.e. return nothing.
    }
    
    
    /*
     - How to setup up the height for the footer in section
     */
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 2 {
            return CGFloat(48)
        }
        return CGFloat(0)
    }
    
    /*
     - Cell For Row at Index Path
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let storageAndDataCell = tableView.dequeueReusableCell(withIdentifier: "StorageAndDataTableViewCellID", for: indexPath) as!
            StorageAndDataTableViewCell
            storageAndDataCell.titleLabel.text = storageArray[indexPath.row]
            storageAndDataCell.backgroundColor = UIColor.white
            storageAndDataCell.accessoryType = .disclosureIndicator
            storageAndDataCell.titleLabel.textColor = UIColor.black
            storageAndDataCell.selectedTypeLable.isHidden = true
            storageAndDataCell.theSwitch.isHidden = true
            return storageAndDataCell
        }
        
        if indexPath.section == 1 {
            let storageAndDataCell = tableView.dequeueReusableCell(withIdentifier: "StorageAndDataTableViewCellID", for: indexPath) as!
            StorageAndDataTableViewCell
            storageAndDataCell.titleLabel.text = networkArray[indexPath.row]
            
            if indexPath.row == 0 {
                storageAndDataCell.backgroundColor = UIColor.white
                storageAndDataCell.accessoryType = .disclosureIndicator
                storageAndDataCell.titleLabel.textColor = UIColor.black
                storageAndDataCell.theSwitch.isHidden = true
                
            } else if indexPath.row == 1 {
                storageAndDataCell.theSwitch.isOn = true
                storageAndDataCell.backgroundColor = UIColor.white
                storageAndDataCell.titleLabel.textColor = UIColor.black
                
            } else if indexPath.row == 2 {
                storageAndDataCell.backgroundColor = UIColor.white
                storageAndDataCell.accessoryType = .disclosureIndicator
                storageAndDataCell.titleLabel.textColor = UIColor.black
                storageAndDataCell.theSwitch.isHidden = true
            }
            
            return storageAndDataCell
        } else {
            
            let storageAndDataCell = tableView.dequeueReusableCell(withIdentifier: "StorageAndDataTableViewCellID", for: indexPath) as!
            StorageAndDataTableViewCell
            storageAndDataCell.titleLabel.text = mediaAutoDownloadArray[indexPath.row]
            
            if indexPath.row == 0 {
                storageAndDataCell.selectedTypeLable.text = "Wi-Fi and Cellular"
                storageAndDataCell.accessoryType = .none
                storageAndDataCell.theSwitch.isHidden = true
                storageAndDataCell.backgroundColor = UIColor.white
                storageAndDataCell.titleLabel.textColor = UIColor.black
                
            } else if indexPath.row == 1 {
                storageAndDataCell.selectedTypeLable.text = "Wi-Fi"
                storageAndDataCell.accessoryType = .none
                storageAndDataCell.theSwitch.isHidden = true
                storageAndDataCell.backgroundColor = UIColor.white
                storageAndDataCell.titleLabel.textColor = UIColor.black
                
            } else if indexPath.row == 4 {
                storageAndDataCell.titleLabel.text = "Reset Auto-Download Settings"
                storageAndDataCell.accessoryType = .none
                storageAndDataCell.theSwitch.isHidden = true
                storageAndDataCell.backgroundColor = UIColor.white
                storageAndDataCell.titleLabel.textColor = .lightGray

            }

            return storageAndDataCell
            
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(48.0)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}

