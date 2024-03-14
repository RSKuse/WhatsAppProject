//
//  HomeSettingTableViewCell.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/06.
//

import Foundation
import UIKit

class HomeSettingTableViewCell: UITableViewCell {
   
    lazy var contactImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Thando")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 30
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Thando"
        label.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.regular)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var descriptionLable: UILabel = {
        let label = UILabel()
        label.text = "Available"
        label.textColor = .lightGray
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLable])
        stackView.distribution = .fillProportionally
        stackView.spacing = 1.0
        stackView.alignment = .leading
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var qrCodeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "qr_code_icon-3")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = UIColor.gray.withAlphaComponent(0.2)
        imageView.layer.cornerRadius = 15
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var settingsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "heart_icon-6")
        imageView.isHidden = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var iconNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Avatar"
        label.textColor = .black
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
        setupUI()
    }

    func setupUI() {
        addSubview(contactImageView)
        addSubview(titleLabel)
        addSubview(descriptionLable)
        addSubview(labelStackView)
        addSubview(qrCodeImageView)
        addSubview(settingsImageView)
        addSubview(iconNameLabel)
        
        contactImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        contactImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        contactImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        contactImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true   
        
        labelStackView.leftAnchor.constraint(equalTo: contactImageView.rightAnchor, constant: 14).isActive = true
        labelStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        qrCodeImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        qrCodeImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        qrCodeImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        qrCodeImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        settingsImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        settingsImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        settingsImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        settingsImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        iconNameLabel.leftAnchor.constraint(equalTo: settingsImageView.rightAnchor, constant: 12).isActive = true
        iconNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
  
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
