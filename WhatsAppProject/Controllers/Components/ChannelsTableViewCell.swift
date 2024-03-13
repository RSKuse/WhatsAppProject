//
//  ChannelsCollectionViewCell.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/12.
//

import Foundation
import UIKit

class ChannelsTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    lazy var channelsCollectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        flowLayout.minimumLineSpacing = 10.0
//        flowLayout.minimumInteritemSpacing = 0
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.backgroundColor = UIColor.clear
        collectionView.isScrollEnabled = true
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView 
        
    }()
    
    lazy var titlelabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.078, green: 0.086, blue: 0.098, alpha: 1)
        label.text = "FIND CHANNELS"
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        setupView()
        registerCollectionCell()
        backgroundColor = UIColor.green
    }
        
    
    func setupView() {
        contentView.addSubview(channelsCollectionView)
        addSubview(titlelabel)
        
        channelsCollectionView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        channelsCollectionView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        channelsCollectionView.topAnchor.constraint(equalTo: topAnchor, constant: 60).isActive = true
//        channelsCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        channelsCollectionView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        titlelabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        titlelabel.bottomAnchor.constraint(equalTo: channelsCollectionView.topAnchor).isActive = true
    }
    
    func registerCollectionCell() {
        channelsCollectionView.register(ChannelsCollectionViewCell.self, forCellWithReuseIdentifier: "ChannelsCollectionViewCellID")
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ChannelsTableViewCell {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 144.0, height: 160.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let channelCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChannelsCollectionViewCellID", for: indexPath) as! ChannelsCollectionViewCell
        return channelCollectionCell
    }

}

