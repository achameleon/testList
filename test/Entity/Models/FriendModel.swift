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
    var listDescription: String = ""
    
    init() {
        
    }
    
    required init?(map: AnyObject?) {
        guard let map = map as? [String: AnyObject] else { return nil }
        
    }
    
}

extension FriendModel {
    static func ==(lhs: FriendModel, rhs: FriendModel) -> Bool {
        return lhs.id == rhs.id && rhs.id == lhs.id
    }
}
