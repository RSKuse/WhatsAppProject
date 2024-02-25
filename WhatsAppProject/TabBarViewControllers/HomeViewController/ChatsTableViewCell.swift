//
//  ChatsTableViewCell.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/02/22.
//

import Foundation
import UIKit

class ChatsTableViewCell: UITableViewCell {
    
    lazy var contactImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "kiero_d")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 32.0
        imageView.backgroundColor = .red
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.text = "Kiero Daniels"
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.semibold)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var recentMessageLabel: UILabel = {
       let label = UILabel()
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.5
        label.textColor = .systemGray2
        let attributedString = NSMutableAttributedString(string: "The first step you can do to get started is set up the projects. GitHub repo, the tab bars.")
        label.attributedText = attributedString
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var timeStampLabel: UILabel = {
       let label = UILabel()
        label.text = "yesterday"
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.textColor = UIColor.gray
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
  
    lazy var messageStatusImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Group 1-2")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var recentMessageStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [messageStatusImageView, recentMessageLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return  stackView
    }()
    
//    lazy var labelStackView: UIStackView = {
//        let stackView = UIStackView(arrangedSubviews: [nameLabel, recentMessageStackView])
//        stackView.distribution = .fillProportionally
//        stackView.spacing = 5.0
//        stackView.alignment = .leading
//        stackView.axis = .vertical
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        return stackView
//    }()
    
//    lazy var userStackView: UIStackView = {
//        let stackView = UIStackView(arrangedSubviews: [contactImageView, labelStackView,])
//        stackView.axis = .horizontal
//        stackView.distribution = .fillProportionally
//        stackView.spacing = 10.0
//        stackView.alignment = .leading
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        return stackView
//    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        accessoryType = UITableViewCell.AccessoryType.none
        setupUI()
    }
    
    func setupUI() {
        addSubview(contactImageView)
        addSubview(timeStampLabel)
        addSubview(recentMessageStackView)
        addSubview(nameLabel)
        
        
        contactImageView.heightAnchor.constraint(equalToConstant: 64).isActive = true
        contactImageView.widthAnchor.constraint(equalToConstant: 64).isActive = true
        contactImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        contactImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
      
        timeStampLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        timeStampLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        
        nameLabel.leftAnchor.constraint(equalTo: contactImageView.rightAnchor, constant: 14).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: timeStampLabel.centerYAnchor).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: timeStampLabel.leftAnchor, constant: -16).isActive = true
        
        
        recentMessageStackView.leftAnchor.constraint(equalTo: nameLabel.leftAnchor).isActive = true
        recentMessageStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        recentMessageStackView.topAnchor.constraint(equalTo:nameLabel.bottomAnchor, constant: 4).isActive = true
        

        
        
   
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
