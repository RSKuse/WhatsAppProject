//
//  ChannelsCollectionViewCell.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/12.
//

import Foundation
import UIKit

class ChannelsCollectionViewCell: UICollectionViewCell {
    
    
    lazy var channelImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 36
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .red
        return imageView
    }()
    
    lazy var ChannelCompanyNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Design Boom"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var followButton: UIButton = {
        let button = UIButton()
        button.setTitle("Follow", for: UIControl.State.normal)
        button.setTitleColor(.white, for: UIControl.State.normal)
        button.backgroundColor = UIColor(red: 224/255, green: 240/255, blue: 255/255, alpha: 1.0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        button.layer.cornerRadius = 15.0
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.addTarget(self, action: #selector(followButtonAction), for: .touchUpInside)
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        layer.cornerRadius = 20
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.lightGray.cgColor // For boarder colour you need to add a .cgColor at the end of your colour.
        setupView()
    }
    
    func setupView() {
        
        addSubview(channelImageView)
        addSubview(ChannelCompanyNameLabel)
        addSubview(followButton)
        
        channelImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        channelImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        channelImageView.widthAnchor.constraint(equalToConstant: 72).isActive = true
        channelImageView.heightAnchor.constraint(equalToConstant: 72).isActive = true
        
        ChannelCompanyNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        ChannelCompanyNameLabel.topAnchor.constraint(equalTo:channelImageView.bottomAnchor, constant: 6).isActive = true
        ChannelCompanyNameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        
        followButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        followButton.topAnchor.constraint(equalTo:ChannelCompanyNameLabel.bottomAnchor, constant: 10).isActive = true
        //followButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        followButton.widthAnchor.constraint(equalToConstant: 118).isActive = true
        followButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func followButtonAction() {
    
    }
}

