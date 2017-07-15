//
//  RListModel.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation
import RealmSwift

class RFriendModel: Object {
    
    dynamic var id: Int = 0
    dynamic var firstName: String = ""
    dynamic var lastName: String = ""
    dynamic var photoURL: String = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
}
