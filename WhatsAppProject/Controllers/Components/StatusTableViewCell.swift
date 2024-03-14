//
//  StatusTableViewCell.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/14.
//

import Foundation
import UIKit

class StatusTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    lazy var statusCollectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        flowLayout.minimumLineSpacing = 8.0
//        flowLayout.minimumInteritemSpacing = 0
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.backgroundColor = UIColor.clear
        //collectionView.layer.cornerRadius = 36
        collectionView.isScrollEnabled = true
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
        
    }()
    
    lazy var titlelabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Status"
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        setupView()
        registerCollectionCell()
        backgroundColor = UIColor.white
    }
        
    
    func setupView() {
        contentView.addSubview(statusCollectionView)
        addSubview(titlelabel)
        
//        statusCollectionView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
//        statusCollectionView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
//        statusCollectionView.topAnchor.constraint(equalTo: topAnchor, constant: 60).isActive = true
////        channelsCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
//        statusCollectionView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        statusCollectionView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        statusCollectionView.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
        statusCollectionView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        statusCollectionView.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        titlelabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        titlelabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        //itlelabel.bottomAnchor.constraint(equalTo: statusCollectionView.topAnchor, constant: 5).isActive = true
    }
    
    func registerCollectionCell() { 
        statusCollectionView.register(StatusCollectionViewCell.self, forCellWithReuseIdentifier: "StatusCollectionViewCellID")
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension StatusTableViewCell {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 72, height: 72)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let statusCollectionView = collectionView.dequeueReusableCell(withReuseIdentifier: "StatusCollectionViewCellID", for: indexPath) as! StatusCollectionViewCell
        return statusCollectionView
    }

}

