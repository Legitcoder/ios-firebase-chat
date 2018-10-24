//
//  MessageController.swift
//  Firebase Chat
//
//  Created by Moin Uddin on 10/23/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import Foundation
import Firebase

class MessageController {
    
    var ref: DatabaseReference!
    
    init() {
        self.ref = Database.database().reference()
    }
    
    func createMessage(completion: @escaping () -> ()) {
        
    }
}
