//
//  QRCodeContainerView.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/07.
//

//import Foundation
//import UIKit
//
//
//class QRCodeContainerView: UIView {
//    
//    lazy var qrCodeContainerView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .gray
//        view.layer.cornerRadius = 10
//        view.layer.masksToBounds = true
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    lazy var qrCodeImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "qr_code_icon-3")
//        imageView.contentMode = .scaleAspectFill
//        imageView.clipsToBounds = true
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupViews()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    func setupViews() {
//        addSubview(qrCodeContainerView)
//        addSubview(qrCodeImageView)
//        
//        qrCodeContainerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
//        qrCodeContainerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
//        qrCodeContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
//        qrCodeContainerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
//        
//        qrCodeImageView.topAnchor.constraint(equalTo: qrCodeContainerView.topAnchor).isActive = true
//        qrCodeImageView.leadingAnchor.constraint(equalTo: qrCodeContainerView.leadingAnchor).isActive = true
//        qrCodeImageView.trailingAnchor.constraint(equalTo: qrCodeContainerView.trailingAnchor).isActive = true
//        qrCodeImageView.bottomAnchor.constraint(equalTo: qrCodeContainerView.bottomAnchor).isActive = true
//        
//        
//    }
//}
