//
//  Message.swift
//  Mathtivity
//
//  Created by Andrew Tran on 1/13/19.
//  Copyright © 2019 Andrew Tran. All rights reserved.
//

import UIKit
import Firebase
class Message: NSObject {
    @objc var imageUrl: String?
    @objc var fromId: String?
    @objc var toId: String?
    @objc var text: String?
    @objc var timestamp: NSNumber?
    
    @objc var imageHeight: NSNumber?
    @objc var imageWidth: NSNumber?
    
    @objc func chatPartnerId() -> String? {
        
        //THOSE TWO LINES DO THE SAME THING
        return fromId == Auth.auth().currentUser?.uid ? toId : fromId
        
//        if fromId == Auth.auth().currentUser?.uid {
//            return toId
//        } else {
//            return fromId
//        }
    }
    
    init(dictionary: [String:AnyObject]) {
        super.init()
        
        fromId = dictionary["fromId"] as? String
        text = dictionary["text"] as? String
        toId = dictionary["toId"] as? String
        imageUrl = dictionary["imageUrl"] as? String
        timestamp = dictionary["timestamp"] as? NSNumber
        imageHeight = dictionary["imageHeight"] as? NSNumber
        imageWidth = dictionary["imageWidth"] as? NSNumber
        
    }
}
