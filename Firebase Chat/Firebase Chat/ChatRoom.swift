//
//  ChatRoom.swift
//  Firebase Chat
//
//  Created by Moin Uddin on 10/23/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import Foundation


struct ChatRoom {
    
    var name: String
    var chatRoomId: String
    var messages: [Message]
    
    
    init(dictionary: [String: Any]) {
        self.name = dictionary["name"] as! String
        self.chatRoomId = dictionary["chatroomId"] as! String
        self.messages = dictionary["messages"] as? [Message] ?? []
    }
}
