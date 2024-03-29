//
//  WhatsappChatModelStruct.swift
//  WhatsAppProject
//
//  Created by Reuben Simphiwe Kuse on 2024/02/26.
//

import Foundation
import UIKit

struct WhatsappMessage {
    let messageId: String
    let sender: WhatsappUser
    let receiver : WhatsappUser
    let timestamp: Date
    let messageText: String
    let attachments: [String] // voice note, video, photo, documents,  gif.
    let messageType: MessageType // eg,text, voice calls, video calls, contact,message location
    let messageStatus: MessageStatus // eg Status of the message (sent, delivered, unread, read, None when is voice calls)
   
    // let reactions: [Reaction]
    // let referencedMessageId: String
    // let isFowardedMessage: Bool
    // let numberOfFwardedTimes: Int
    // let location: Location
   // let contactInfo: ContactInfo?
    // let groupInfo: GroupInfo?
    
}

struct WhatsappUser {
    //let userId : String
    let profileImage: UIImage
    let name : String
    var isVerified : Bool = false
    //let phoneNumber : String
}

enum MessageType {
    case text
    case photo
    case outgoingVoiceCall
    case incomingVoiceCall
    case outgoingVideoCall
    case incomingVideoCall
    case contact
    case location
}

enum MessageStatus {
    case sent
    case delivered
    case read
    case none
 
}


