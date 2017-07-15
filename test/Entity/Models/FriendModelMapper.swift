//
//  ListModelMapper.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

class FriendModelMapper: Mapper<FriendModel, RFriendModel> {
    
    override func mapTo(item: RFriendModel) -> FriendModel? {
        let object = FriendModel()
        object.id = item.id
        object.listDescription = item.listDescription
        return object
    }
    
    override func mapFrom(item: FriendModel) -> RFriendModel? {
        let object = RFriendModel()
        object.id = item.id
        object.listDescription = item.listDescription
        return object
    }
    
}
