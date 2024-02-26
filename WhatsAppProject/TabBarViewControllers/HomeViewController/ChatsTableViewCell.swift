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
        paragraphStyle.lineHeightMultiple = 1.25
        label.textColor = .systemGray2
        let attributedString = NSMutableAttributedString(string: "Banking got stuck in the 90's. We are bringing it to today and the future.🌍")
        label.attributedText = attributedString
        label.lineBreakMode = .byTruncatingTail
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var timeStampLabel: UILabel = {
       let label = UILabel()
        label.text = "yesterday"
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
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
        let stackView = UIStackView(arrangedSubviews: [messageStatusImageView, photoIconImageView, recentMessageLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 6
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return  stackView
    }()
    
    lazy var photoIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ic_camera-2")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var verificationIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ic_verified")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var markMessagesIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Ellipse 6")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
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
        addSubview(markMessagesIconImageView)
        addSubview(verificationIconImageView)
        
        
        contactImageView.heightAnchor.constraint(equalToConstant: 64).isActive = true
        contactImageView.widthAnchor.constraint(equalToConstant: 64).isActive = true
        contactImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        contactImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
      
        timeStampLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        timeStampLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        
        nameLabel.leftAnchor.constraint(equalTo: contactImageView.rightAnchor, constant: 14).isActive = true
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: timeStampLabel.centerYAnchor).isActive = true
        //nameLabel.rightAnchor.constraint(equalTo: timeStampLabel.leftAnchor, constant: -16).isActive = true
        
        
        recentMessageStackView.leftAnchor.constraint(equalTo: nameLabel.leftAnchor).isActive = true
        recentMessageStackView.rightAnchor.constraint(equalTo:rightAnchor, constant: -54).isActive = true
        recentMessageStackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4).isActive = true
        //recentMessageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: -4).isActive = true
        //recentMessageStackView.centerYAnchor.constraint(equalTo: markMessagesIconImageView.centerYAnchor).isActive = true
        recentMessageStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 11).isActive = true
        
        markMessagesIconImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        markMessagesIconImageView.topAnchor.constraint(equalTo: timeStampLabel.bottomAnchor, constant: 6).isActive = true
        //markMessagesIconImageView.centerYAnchor.constraint(equalTo: recentMessageStackView.centerYAnchor).isActive = true
        
        verificationIconImageView.leftAnchor.constraint(equalTo: nameLabel.rightAnchor, constant: 10).isActive = true
        verificationIconImageView.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor).isActive = true
        //verificationIconImageView.bottomAnchor.constraint(equalTo: recentMessageStackView.topAnchor, constant: -12).isActive = true
        

        
        
   
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
