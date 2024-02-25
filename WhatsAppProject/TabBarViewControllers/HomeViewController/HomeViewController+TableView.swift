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
        if indexPath.row == 0 {
            return 40
        } else {
            return 80
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chatCell = tableView.dequeueReusableCell(withIdentifier: "ChatsTableViewCellID", for: indexPath) as! ChatsTableViewCell
        
        if indexPath.row == 1 {
            chatCell.messageStatusImageView.image = UIImage(named: "ic_missed_call")
        }
        if indexPath.row == 2 {
            chatCell.messageStatusImageView.image = UIImage(named: "Group 1-2")?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
            chatCell.messageStatusImageView.tintColor = .black
        
            
        }
            
        return chatCell
    }
    
}
