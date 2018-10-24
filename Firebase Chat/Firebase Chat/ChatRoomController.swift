//
//  ChatRoomController.swift
//  Firebase Chat
//
//  Created by Moin Uddin on 10/23/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import Foundation
import Firebase

class ChatRoomController {
    
    let ref: DatabaseReference!
    
    
    init() {
        self.ref = Database.database().reference()
    }
    
    func createChatRoom(name: String) {
        guard let chatroomId = ref.childByAutoId().key else { return }
        ref.child("chatrooms").child(chatroomId).setValue(["name": name, "chatroomId": chatroomId, "messages": []])
    }
    
    func fetchChatRooms() {
        ref.child("chatrooms").observeSingleEvent(of: .value, with: { (snapshot) in
            guard let chatRoomDictionaries = (snapshot.value as? [String : [String : Any]]).map({ $0 })?.values else { return }
            
            for chatRoomDictionary in chatRoomDictionaries {
                let chatRoom = ChatRoom(dictionary: chatRoomDictionary)
                self.chatRooms.append(chatRoom)
            }
            
        })
    }
    
    func fetchChatRoom(chatRoomId: String) {
        ref.child("chatrooms").child(chatRoomId).observeSingleEvent(of: .value, with: { (snapshot) in
            let chatroom = snapshot.value as? [String: Any]
            print(chatroom?["name"])
        })
    }
    
    var chatRooms: [ChatRoom] = []
}
