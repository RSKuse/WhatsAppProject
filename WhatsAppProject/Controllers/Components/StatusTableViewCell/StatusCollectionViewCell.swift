//
//  StatusCollectionViewCell.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/14.
//

import Foundation
import UIKit

class StatusCollectionViewCell: UICollectionViewCell {
    
    
    lazy var statusImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 36
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .cyan
        return imageView
    }()
    
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "My Status"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 10, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor = .black
//        layer.cornerRadius = 20
//        layer.borderWidth = 1.0
//        layer.borderColor = UIColor.lightGray.cgColor 
        setupView()
    }
    
    func setupView() {
        
        addSubview(statusImageView)
        addSubview(userNameLabel)
        
        statusImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        statusImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        statusImageView.widthAnchor.constraint(equalToConstant: 72).isActive = true
        statusImageView.heightAnchor.constraint(equalToConstant: 72).isActive = true
        
        userNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        userNameLabel.topAnchor.constraint(equalTo:statusImageView.bottomAnchor, constant: 6).isActive = true
        userNameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
