//
//  NewsLocalStorage.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

class FriendsLocalStorage {
    
    var realm: RealmService!
    
    init(realmService: RealmService) {
        realm = realmService
    }
    
    func saveFriends(friends: [FriendModel]) {
        var rfriends = [RFriendModel]()
        let mapper = FriendModelMapper()
        for friend in friends {
            guard let rfriend = mapper.mapFrom(item: friend) else { continue }
            rfriends.append(rfriend)
        }
        realm.write(rfriends, needUpdate: true) {}
    }
    
    func getFriends() -> [FriendModel] {
        var friends = [FriendModel]()
        let rfriends: [RFriendModel] = realm.read(nil, orderBy: nil)
        let mapper = FriendModelMapper()
        for rfriend in rfriends {
            guard let friend = mapper.mapTo(item: rfriend) else { continue }
            friends.append(friend)
        }
        return friends
    }
    
}
