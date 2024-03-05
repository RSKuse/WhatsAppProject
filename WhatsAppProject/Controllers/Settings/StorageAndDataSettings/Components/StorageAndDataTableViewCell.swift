//
//  StorageAndDataTableViewCell.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/05.
//

import Foundation
import UIKit

class StorageAndDataTableViewCell: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var selectedTypeLable: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var theSwitch: UISwitch = {
        let theSwitch = UISwitch()
        theSwitch.isOn = false
        theSwitch.isHidden = true
        theSwitch.translatesAutoresizingMaskIntoConstraints = false
        return theSwitch
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
        setupUI()
    }
    
    func setupUI() {
        theSwitch.frame = CGRect(x: 5, y: 5, width: 100, height: contentView.frame.size.height-10)
        addSubview(titleLabel)
        addSubview(theSwitch)
        addSubview(selectedTypeLable)
        
        
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        selectedTypeLable.rightAnchor.constraint(equalTo: rightAnchor, constant: -35).isActive = true
        selectedTypeLable.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true

        
        theSwitch.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        theSwitch.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
