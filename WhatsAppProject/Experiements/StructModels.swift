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
    let duration: String // Duration of the video (in seconds)
    let viewCount: Int // Number of views for the video
    let likeCount: Int // Number of likes for the video
    let dislikeCount: Int // Number of dislikes for the video
    let commentCount: Int // Number of comments on the video
    let tags: [String] // Tags associated with the video
    let thumbnailURLs: [URL] // URLs of video thumbnails
    let videoURL: String // URL of the video
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
    let ageRestriction: String // Age restriction details for the video (if applicable)
    let quality: VideoQuality
    
}

struct YouTubeChannel {
    let channelId: String // Unique identifier for the channel
    let channelTitle: String // Title of the channel
    let subscriberCount: Int // Number of subscribers for the channel
    let isVerified: Bool // Indicates whether the channel is verified
}

struct VideoQuality {
    let resolution: Int // Resolution of the video (e.g., 1080 for 1080p, 720 for 720p, etc.)
    let frameRate: Int // Frame rate of the video (e.g., 30 for 30fps, 60 for 60fps)
    let isHDR: Bool // Indicates whether the video is in HDR (High Dynamic Range)
    let is3D: Bool // Indicates whether the video is in 3D format

}


struct InstagramPost {
    let postId: String // Unique identifier for the post
    let userId: String // Unique identifier for the user who posted
    let username: String // Username of the user who posted
    let profilePictureURL: URL // URL of the user's profile picture
    let postType: PostType // Type of the post (image, video, carousel)
    let imageUrl: String // URL of the post image (optional, if postType is image or carousel)
    let videoUrl: String // URL of the post video (optional, if postType is video)
    let carouselImagesUrls: [String] // URLs of images in carousel post (optional, if postType is carousel)
    let caption: String // Caption of the post
    let location: String // Location tagged in the post (optional)
    let tags: [String] // Tags mentioned in the post
    let likesCount: Int // Number of likes on the post
    let commentsCount: Int // Number of comments on the post
    let timestamp: Date // Timestamp indicating when the post was published
    let isLikedByCurrentUser: Bool // Indicates whether the current user has liked the post
    let isSavedByCurrentUser: Bool // Indicates whether the current user has saved the post
    let isCommentingEnabled: Bool // Indicates whether commenting is enabled on the post
    let isSharingEnabled: Bool // Indicates whether sharing is enabled for the post
    let isPromoted: Bool // Indicates whether the post is a promoted content
    let isSponsored: Bool // Indicates whether the post is sponsored
    let isMultiplePhotos: Bool // Indicates whether the post contains multiple photos in a carousel
    let isVideo: Bool // Indicates whether the post is a video
    let isTagged: Bool // Indicates whether the post is tagged with other users
    let isLocationTagged: Bool // Indicates whether the post is tagged with a location
    let isAlbum: Bool // Indicates whether the post is part of an album (carousel)
    let viewCount: Int // Number of views on the post video (optional, if postType is video)
    let savedCount: Int // Number of times the post has been saved
    let shareCount: Int // Number of times the post has been shared
    let commenters: [String] // Usernames of users who commented on the post
    let likers: [String] // Usernames of users who liked the post
    let tagsList: [String] // Usernames of users tagged in the post
    let isBusinessAccount: Bool // Indicates whether the user is a business account
    let isVerifiedAccount: Bool // Indicates whether the user is a verified account
    let isPrivateAccount: Bool // Indicates whether the user is a private account
    let isFollowing: Bool // Indicates whether the current user is following the user who posted
    let followersCount: Int // Number of followers of the user who posted
    let followingCount: Int // Number of users followed by the user who posted
    let biography: String // Biography of the user who posted (optional)
    let websiteURL: String // URL of the website linked by the user who posted (optional)
    let email: String // Email address of the user who posted (optional)
    let phoneNumber: String // Phone number of the user who posted (optional)
}

struct PostType {
    let isImage: Bool // Indicates whether the post is an image
    let isVideo: Bool // Indicates whether the post is a video
    let isCarousel: Bool // Indicates whether the post is a carousel
}

struct AppleWatchWorkout {
    let workoutId: String // Unique identifier for the workout
    let workoutType: WorkoutType // Type of the workout (e.g., running, cycling, swimming)
    let startTime: Date // Start time of the workout
    let endTime: Date // End time of the workout
    let duration: TimeInterval // Duration of the workout (in seconds)
    let distance: Double // Distance covered during the workout (in meters or kilometers)
    let averageHeartRate: Int? // Average heart rate during the workout (optional)
    let maximumHeartRate: Int? // Maximum heart rate during the workout (optional)
    let caloriesBurned: Double // Calories burned during the workout
    let elevationGain: Double // Elevation gain during the workout (in meters)
    let route: [String] // Route coordinates recorded during the workout (optional)
    let workoutRouteImageURL: URL? // URL of an image showing the workout route (optional)
    let isIndoorWorkout: Bool // Indicates whether the workout was performed indoors
}

struct WorkoutType {
    let type: String // Type of the workout (e.g., running, cycling, swimming)
    let iconURL: String // URL of the icon representing the workout type
}

struct KasiTransaction {
    let transactionId: String // Unique identifier for the transaction
    let sender: String // User who initiated the transaction
    let recipient: String // User who received the transaction
    let amount: Double // Amount of the transaction
    let currency: String // Currency of the transaction
    let transactionType: String // Type of transaction (e.g., payment, transfer)
    let timestamp: Date // Timestamp indicating when the transaction occurred
    let description: String // Description or memo for the transaction
    let status: String // Status of the transaction (e.g., pending, completed, failed)

}

struct TwitterUserProfile {
    let userId: String // Unique identifier for the user
    let username: String // Username of the user
    let displayName: String // Display name of the user
    let bio: String // Biography or description of the user (optional)
    let location: String // Location of the user (optional)
    let website: String // Website URL of the user (optional)
    let profileImageURL: String // URL of the user's profile image
    let bannerImageURL: String // URL of the user's banner image (optional)
    let joinedDate: Date // Date when the user joined Twitter
    let followerCount: Int // Number of followers of the user
    let followingCount: Int // Number of users the user is following
    let tweetCount: Int // Number of tweets posted by the user
    let isVerified: Bool // Indicates whether the user is verified by Twitter
    let isProtected: Bool // Indicates whether the user's tweets are protected
    let isSuspended: Bool // Indicates whether the user's account is suspended
    let isFollowing: Bool // Indicates whether the current user is following this user
    let isFollowedByCurrentUser: Bool // Indicates whether the current user is followed by this user
    let pinnedTweet: TwitterTweet // The user's pinned tweet

}

struct TwitterTweet {
    let tweetId: String // Unique identifier for the tweet
    let userId: String // User ID of the tweet author
    let username: String // Username of the tweet author
    let tweetText: String // Text content of the tweet
    let createdAt: Date // Timestamp indicating when the tweet was created
    let retweetCount: Int // Number of retweets for the tweet
    let favoriteCount: Int // Number of favorites (likes) for the tweet
    let isRetweeted: Bool // Indicates whether the tweet has been retweeted by the current user
    let isFavorited: Bool // Indicates whether the tweet has been favorited (liked) by the current user
    let isReply: Bool // Indicates whether the tweet is a reply to another tweet
    let repliedToTweetId: String? // ID of the tweet to which this tweet is a reply (optional)
    let mediaURLs: [URL] // URLs of media (e.g., images, videos) attached to the tweet
    let hashtags: [String] // Hashtags mentioned in the tweet
    let mentions: [String] // Usernames mentioned in the tweet
    let urls: [String] // URLs included in the tweet
    let replyCount: Int // Number of replies to the tweet
    let isPinned: Bool // Indicates whether the tweet is pinned by the user
    let isSensitive: Bool // Indicates whether the tweet contains sensitive content
    let language: String // Language of the tweet
    let source: String // Source application or device used to post the tweet
}


struct AirbnbHomeListing {
    let listingId: String // Unique identifier for the listing
    let title: String // Title of the listing
    let description: String // Description of the listing
    let location: String // Location of the listing
    let imageURLs: [URL] // URLs of images showcasing the listing
    let pricePerNight: Double // Price per night for the listing
    let numberOfBedrooms: Int // Number of bedrooms in the listing
    let numberOfBathrooms: Int // Number of bathrooms in the listing
    let capacity: Int // Maximum capacity of guests the listing can accommodate
    let amenities: [String] // Amenities provided in the listing
    let rating: Double // Average rating of the listing
    let numberOfReviews: Int // Number of reviews for the listing
    let isSuperhost: Bool // Indicates whether the host is a superhost
    let isInstantBookable: Bool // Indicates whether the listing is instantly bookable
    let host: AirbnbHost // Details of the host
    let rules: String // House rules for the listing
    let checkInTime: String // Check-in time for guests
    let checkOutTime: String // Check-out time for guests
    let cancellationPolicy: String // Cancellation policy for the listing
    let availabilityCalendar: [Date] // Dates when the listing is available for booking
    let propertyType: String // Type of the property (e.g., entire home, private room, shared room)
    let houseRulesDetails: String // More detailed house rules for the listing
    let reviews: [AirbnbReview] // Reviews for the listing
    let additionalFees: [AirbnbAdditionalFee] // Additional fees associated with the listing
    let locationDetails: AirbnbLocationDetails // More detailed location information for the listing
    let bookingCalendar: [Date: Bool] // Booking calendar for the property (date: availability)
    
}

struct AirbnbHost {
    let hostId: String // Unique identifier for the host
    let hostName: String // Name of the host
    let hostProfilePictureURL: String // URL of the host's profile picture
    let superhostStatus: Bool // Indicates whether the host is a superhost
    let numberOfListings: Int // Number of listings hosted by the host
    let responseRate: Double // Response rate of the host to guest inquiries
    let responseTime: String // Average response time of the host to guest inquiries
    let languagesSpoken: [String] // Languages spoken by the host
    
}

struct AirbnbReview {
    let reviewId: String // Unique identifier for the review
    let userId: String // User ID of the reviewer
    let username: String // Username of the reviewer
    let rating: Double // Rating given by the reviewer
    let comment: String // Comment provided by the reviewer
    let date: Date // Date of the review
}

struct AirbnbAdditionalFee {
    let name: String // Name of the additional fee
    let amount: Double // Amount of the additional fee
}

struct AirbnbLocationDetails {
    let coordinates: (latitude: Double, longitude: Double) // Coordinates of the listing
    let neighborhoodDescription: String // Description of the neighborhood
    let nearbyAttractions: [String] // Nearby attractions
}



struct AppStoreApp {
    let appId: String // Unique identifier for the app
    let name: String // Name of the app
    let developer: String // Developer name of the app
    let category: String // Category of the app
    let averageRating: Double // Average rating of the app
    let ratingsCount: Int // Number of ratings for the app
    let description: String // Description of the app
    let version: String // Current version of the app
    let releaseDate: Date // Release date of the app
    let size: String // Size of the app
    let compatibility: String // Device compatibility of the app
    let languages: [String] // Languages supported by the app
    let seller: String // Seller name of the app
    let price: Double // Price of the app (if applicable)
    let currency: String // Currency of the price (if applicable)
    let isFree: Bool // Indicates whether the app is free
    let screenshots: [String] // URLs of screenshots for the app
    let iconURL: String // URL of the app's icon
    let appURL: String // URL of the app on the App Store
    let minimumOSVersion: String // Minimum required iOS version for the app
    let ageRating: String // Age rating of the app
    let privacyPolicyURL: String // URL of the app's privacy policy (optional)
    let supportURL: String // URL of the app's support page (optional)
    let developerWebsiteURL: String // URL of the developer's website (optional)
    let inAppPurchases: [InAppPurchase] // List of in-app purchases offered by the app
    let features: [String] // Key features or functionalities of the app
    let userReviews: [UserReview] // User reviews of the app
    let recentUpdates: [AppUpdate] // Recent updates to the app

}

struct InAppPurchase {
    let productId: String // Unique identifier for the in-app purchase product
    let name: String // Name of the in-app purchase product
    let price: Double // Price of the in-app purchase product
    let currency: String // Currency of the price
    let description: String // Description of the in-app purchase product
}

struct UserReview {
    let userId: String // Unique identifier for the user who left the review
    let username: String // Username of the user who left the review
    let rating: Double // Rating given by the user
    let reviewText: String // Text of the review
    let date: Date // Date when the review was posted
}

struct AppUpdate {
    let version: String // Version number of the update
    let releaseNotes: String // Release notes for the update
    let date: Date // Date when the update was released
}




