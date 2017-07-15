//
//  ListModel.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

class FriendModel: Equatable, Mappable {
 
    var id: Int = 0
    var firstName: String = ""
    var lastName: String = ""
    var photoURL: String = ""
    
    var fullName: String {
        return firstName + " " + lastName
    }
    var url: URL? {
        return URL(string: photoURL)
    }
    
    init() {
        
    }
    
    required init?(map: AnyObject?) {
        guard let map = map as? [String: AnyObject] else { return nil }
        id = map["id"] as? Int ?? 0
        firstName = map["first_name"] as? String ?? ""
        lastName = map["last_name"] as? String ?? ""
        photoURL = map["photo_200_orig"] as? String ?? ""
    }
    
}

extension FriendModel {
    static func ==(lhs: FriendModel, rhs: FriendModel) -> Bool {
        return lhs.id == rhs.id && rhs.id == lhs.id
    }
}
