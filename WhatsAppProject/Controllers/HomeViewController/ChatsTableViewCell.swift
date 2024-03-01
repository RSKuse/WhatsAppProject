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
        //label.frame = CGRect(x: 0, y: 0, width: 270, height: 40)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.05
        label.textColor = UIColor(red: 0.541, green: 0.537, blue: 0.557, alpha: 1)
        let attributedString = NSMutableAttributedString(string: "We need to change something. Or we\nneed to do it ngenye inglela. I just le...", attributes: [NSAttributedString.Key.kern: -0.4, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        label.attributedText = attributedString
        label.lineBreakMode = .byTruncatingTail
        label.numberOfLines = 2
        label.font = UIFont(name: "SFProText-Regular", size: 14)
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
        imageView.isHidden = true
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
        imageView.isHidden = true
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var verificationIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ic_verified")
        imageView.isHidden = true
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var unreadIndicatorView: UIView = {
        let view = UIView()
        view.isHidden = true
        view.layer.cornerRadius = 7
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        addSubview(unreadIndicatorView)
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
        recentMessageStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -25.5).isActive = true
        recentMessageStackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4).isActive = true
        //recentMessageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: -4).isActive = true
        //recentMessageStackView.centerYAnchor.constraint(equalTo: markMessagesIconImageView.centerYAnchor).isActive = true
        recentMessageStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 11).isActive = true
        
        unreadIndicatorView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        unreadIndicatorView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        unreadIndicatorView.widthAnchor.constraint(equalToConstant: 14).isActive = true
        unreadIndicatorView.heightAnchor.constraint(equalToConstant: 14).isActive = true
        
        //markMessagesIconImageView.centerYAnchor.constraint(equalTo: recentMessageStackView.centerYAnchor).isActive = true
        
        verificationIconImageView.leftAnchor.constraint(equalTo: nameLabel.rightAnchor, constant: 10).isActive = true
        verificationIconImageView.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor).isActive = true
        //verificationIconImageView.bottomAnchor.constraint(equalTo: recentMessageStackView.topAnchor, constant: -12).isActive = true
        

        
        
   
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
