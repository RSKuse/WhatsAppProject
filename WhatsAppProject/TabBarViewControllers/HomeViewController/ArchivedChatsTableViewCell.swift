//
//  ArchivedChatsTableViewCell.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/02/25.
//

import Foundation
import UIKit

class ArchivedChatsTableViewCell: UITableViewCell {
    
    lazy var archivedImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ic_achieve")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var titlelabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        label.text = "Archived"
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        setupUI()
        
    }
    func setupUI() {
        contentView.addSubview(archivedImageView)
        contentView.addSubview(titlelabel)
        
        archivedImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 50).isActive = true
        archivedImageView.heightAnchor.constraint(equalToConstant: 14).isActive = true
        archivedImageView.widthAnchor.constraint(equalToConstant: 14).isActive = true
        archivedImageView.centerYAnchor.constraint(equalTo: titlelabel.centerYAnchor).isActive = true

        titlelabel.leftAnchor.constraint(equalTo: archivedImageView.rightAnchor, constant: 35).isActive = true
        titlelabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
 
 
  
    }
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
        
    }
    
    
}
