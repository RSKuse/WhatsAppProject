//
//  StructModels.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/02/27.
//

import Foundation
import UIKit

struct NetflixShowD{
    let title: String
    let description: String
    let releaseYear: Int
    let genres: [String]
    let cast: [String]
    let imageURL: String
    let trailerURL: String
    let numberOfSeasons: Int
    let creators: [String]
    let maturityRating: Int
    let videoQuality: String
    let isTop10: Bool
    let dateAdded: Date
    
}



struct UberEatsShopStruct {
    let name: String
    let rating: Double
    let numberOfRating: Int
    let deliveryTime: Int
    let deliveryFee: Double
    let distance: Double
    let backgroundImageURL: String
    let logoImageURL: String
    let menuItems: [String]
    let address: String
    let phoneNumber: String
    let openingHours: Date
    let isHalal: Bool
    let isKosher: Bool
    let isAllegibleForUberOne: Bool
    let breakfastHours: String
    let lunchHours: String
    let dinnerHours: String

}


//struct Facebook {
//    let name: String
//    let menu: String
//    let rating: Int
//    let deliveryTime: Date
//    let imageURL: String
//}

