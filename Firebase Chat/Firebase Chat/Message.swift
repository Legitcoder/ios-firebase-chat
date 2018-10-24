//
//  Message.swift
//  Firebase Chat
//
//  Created by Moin Uddin on 10/23/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import Foundation

struct Message {
    
    
    var messageText: String
    var sender: String
    var messageId: String
    
    init(dictionary: [String: Any]) {
        self.messageId = dictionary["messageId"] as! String
        self.sender = dictionary["sender"] as! String
        self.messageText = dictionary["messageText"] as! String
    }
    
}
