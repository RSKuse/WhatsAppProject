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
    let coordinates: ShopCoordinates
}

struct ShopCoordinates {
    var latitude: Double
    var long: Double
}



struct FacebookPost {
    let postText: String
    let photos: [String]
    let videos: [String]
    let timestamp: Date
    let isMuted: Bool
    let isAdvert: Bool
    let likesCount: Int
    let group: String
//    let likesCount: Int
    let commentsCount: Int
    let sharesCount: Int
//    let commentsCount: Int
//    let sharesCount: Int
    let privacySettings: PrivacySettings
    let tags: [String]
    let location: String
    let otherMedia: [String]
    let poll: Poll
    let comments: [Comment]
//    let repliesToComments: [CommentReply]
    let hashtags: [String]
    let feelings: String
    let links: [Link]
    let eventInvitation: EventInvitation
    let postInsights: PostInsights
    
}
    
struct PrivacySettings {
    var isPublic: Bool
    var friendsOnly: Bool
    var custom:[String]
}

struct CommentReply {
    let replyId: String
    let commentId: String
    let userId: String
    let userName: String
    let content: String
    let timestamp: Date
    
}
struct Comment {
    let commentId: String
    let userId: String
    let userName: String
    let content: String
    let timestamp: Date
  
}

struct Link {
    let url: String
    let title: String
    let description: String
    let thumbnailURL: String?
    
}

struct EventInvitation {
    let eventName: String
    let eventDate: Date
    let eventLocation: String
    
}

struct PostInsights {
    let reach: Int
    let engagement: Int
    let impressions: Int
    
}
struct Poll {
    let question: String
    let options: [String]
    let results: [Int]
}
