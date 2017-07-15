//
//  FriendsResponse.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

class FriendsResponse: Mappable {
    
    var list: [FriendModel]!
    
    init() {
        list = [FriendModel]()
    }
    
    required init?(map: AnyObject?) {
        guard let map = map as? [String: AnyObject] else { return nil }
        guard let response = map["response"] as? [String: AnyObject] else { return nil }
        guard let items = response["items"] as? [AnyObject] else { return nil }
        list = [FriendModel]()
        for item in items {
            guard let friend = FriendModel(map: item) else { continue }
            list.append(friend)
        }
    }
    
}
