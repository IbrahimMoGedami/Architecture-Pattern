//
//  Friend.swift
//  FriendMVVM
//
//  Created by Ebrahim  Mo Gedamy on 10/21/20.
//

import Foundation
import SwiftyJSON

struct Friend {
    let firstname: String
    let lastname: String
    let phonenumber: String
    let id: Int
}
 
extension Friend {
    init?(json: JSON) {
        guard let id = json["id"] as? Int,
            let firstname = json["firstname"] as? String,
            let lastname = json["lastname"] as? String,
            let phonenumber = json["phonenumber"] as? String else {
                return nil
        }
        self.id = id
        self.firstname = firstname
        self.lastname = lastname
        self.phonenumber = phonenumber
    }
}
