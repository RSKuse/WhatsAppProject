//
//  CollectionViewFunc.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/03/12.
//

//import Foundation
//import UIKit
//
//class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//
//    lazy var recentlyPlayedCollectionView: UICollectionView = {
//        let flowLayout = UICollectionViewFlowLayout()
//        flowLayout.scrollDirection = UICollectionView.ScrollDirection.horizontal // horizontally scrolling collection
//        flowLayout.minimumLineSpacing = 50.0 // distance between each cell
//        flowLayout.minimumInteritemSpacing = 0
//        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
//        collectionView.backgroundColor = UIColor.red
//        collectionView.delegate = self
//        collectionView.dataSource = self
//        collectionView.translatesAutoresizingMaskIntoConstraints = false
//        return collectionView
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .black
//        setupConstraints()
//        registerCollectionCells()
//    }
//    
//    func setupConstraints() {
//        view.addSubview(recentlyPlayedCollectionView)
//        
//        recentlyPlayedCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        recentlyPlayedCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        recentlyPlayedCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
//        recentlyPlayedCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
//        recentlyPlayedCollectionView.heightAnchor.constraint(equalToConstant: 120).isActive = true
//    }
//    
//    func registerCollectionCells() {
//        recentlyPlayedCollectionView.register(SpotifyCollectionCell.self, forCellWithReuseIdentifier: "SpotifyCollectionCellID")
//    }
//
//
//}
//
//extension ViewController {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 100
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 100.0, height: 100.0)
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let spotifyCollectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SpotifyCollectionCellID", for: indexPath) as! SpotifyCollectionCell
//        return spotifyCollectionCell
//    }
//
//}
