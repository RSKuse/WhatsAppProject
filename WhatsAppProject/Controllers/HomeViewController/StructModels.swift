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


struct SpotifySong {
    let name: String
    let artists: [Artist]
    let duration: Int
    let explicit: Bool
    let previewUrl: String
    let externalUrls: [String]
    let lyrics: String
    let credits: [String]
    let merch: [String]
    let events: [String]
}

struct Artist {
    let artistId: String
    let imageUrl: String
    let artistName: String
    let artistMonthlyListeners: Int
    let artistAbout: String
}

struct WhatsAppMessage {
    let messageId: String
    let senderName: String
    let senderId: String
    let timestamp: Date
    let messageText: String
    let attachments: [String]
    let isRead: Bool
    let isDelivered: Bool
    //let isSentByCurrentUser: Bool
    let messageType: String // eg voice note, video, photo, documents, voice calls, video calls, gif. contact
    let messageStatus: String // eg Status of the message (sent, delivered, read)
    let reactions: [Reaction]
    let referencedMessageId: String
    let isFowardedMessage: Bool
    let numberOfFwardedTimes: Int
    let location: Location
    let contactInfo: ContactInfo?
    // let groupInfo: GroupInfo?
    
}

struct Location {
    let latitude: Double
    let longitude: Double
    let address: String
}

struct ContactInfo {
    let name: String
    let phoneNumber: String
}

struct MessageType {
    let type: String // eg voice note, video, photo, documents, voice calls, video calls, gif
}

struct MessageStatus {
    let status: String // eg Status of the message (sent, delivered, read)
}

struct Reaction {
    let userId: String // Identifying  the user who reacted
    let reactionType: String // eg like, love, laugh and many more
}

struct GroupInfo {
    let groupId: String
    let groupName: String
    let groupMembers: [String] // User IDs of group members
    let messages: [WhatsAppMessage]
}

struct UberTrip {
    let tripId: String // Unique identifier for the trip
    let userId: String // Unique identifier for the user requesting the trip
    let driver: Driver // Information about the driver assigned to the trip
    let pickupLocation: Location // Pickup location of the trip
    let dropoffLocation: Location // Drop-off location of the trip
    let startTime: Date // Start time of the trip
    let endTime: Date // End time of the trip (optional, if trip is ongoing)
    let distance: Double // Distance covered in the trip (in kilometers)
    let duration: TimeInterval // Duration of the trip (in seconds)
    let fare: Double // Fare amount for the trip
    let currency: String // Currency of the fare amount (e.g., "USD")
    let vehicle: Vehicle // Vehicle details used for the trip
    let paymentMethod: PaymentMethod // Payment method used for the trip
    let tripStatus: String // Status of the trip (e.g., ongoing, completed, canceled)
    let rating: Double // Rating given by the user for the trip (if available)
    let review: String // Review provided by the user for the trip (if available)
    let tripPreferences: TripPreferences // Preferences for the trip (e.g., temperature, music)
    let additionalFees: [AdditionalFee] // Additional fees applied to the trip
}

struct Driver {
    let driverId: String // Unique identifier for the driver
    let name: String // Name of the driver
    let phoneNumber: String // Phone number of the driver
    let rating: Double // Rating of the driver
}

struct Vehicle {
    let make: String // Make of the vehicle (e.g., Toyota, Honda)
    let model: String // Model of the vehicle (e.g., Corolla, Accord)
    let licensePlate: String // License plate number of the vehicle
}

struct TripPreferences {
    let temperature: String // Preferred temperature in the vehicle
    let musicType: String // Preferred music type during the trip
    // Add more preferences as needed
}

struct AdditionalFee {
    let description: String // Description of the additional fee
    let amount: Double // Amount of the additional fee
}

struct PaymentMethod {
    let type: String // Type of payment method (e.g., credit card, PayPal)
    let lastFourDigits: String // Last four digits of the payment method (e.g., 1234)
}

struct YouTubeVideo {
    let videoId: String // Unique identifier for the video
    let title: String // Title of the video
    let description: String // Description of the video
    let channel: YouTubeChannel // Channel details where the video is uploaded
    let publishedAt: Date // Timestamp indicating when the video was published
    let duration: TimeInterval // Duration of the video (in seconds)
    let viewCount: Int // Number of views for the video
    let likeCount: Int // Number of likes for the video
    let dislikeCount: Int // Number of dislikes for the video
    let commentCount: Int // Number of comments on the video
    let tags: [String] // Tags associated with the video
    let thumbnailURLs: [URL] // URLs of video thumbnails
    let videoURL: URL // URL of the video
    let category: String // Category of the video
    let language: String // Language of the video
    let isLive: Bool // Indicates whether the video is a live stream
    let is360Degree: Bool // Indicates whether the video is in 360-degree format
    let isFamilyFriendly: Bool // Indicates whether the video is family-friendly
    let isEmbeddable: Bool // Indicates whether the video can be embedded on other sites
    let isCommentsDisabled: Bool // Indicates whether comments are disabled for the video
    let isCaptionAvailable: Bool // Indicates whether captions are available for the video
    let isLicensedContent: Bool // Indicates whether the video is licensed content
    let isMonetized: Bool // Indicates whether the video is monetized
    let isPrivate: Bool // Indicates whether the video is private
    let isUnlisted: Bool // Indicates whether the video is unlisted
    let isVerified: Bool // Indicates whether the uploader of the video is verified
    let isDeleted: Bool // Indicates whether the video has been deleted
    let isBlocked: Bool // Indicates whether the video is blocked in certain regions
    let hasAgeRestriction: Bool // Indicates whether the video has age restrictions
    let ageRestriction: String? // Age restriction details for the video (if applicable)
    
}

struct YouTubeChannel {
    let channelId: String // Unique identifier for the channel
    let channelTitle: String // Title of the channel
    let subscriberCount: Int // Number of subscribers for the channel
    let isVerified: Bool // Indicates whether the channel is verified
}






