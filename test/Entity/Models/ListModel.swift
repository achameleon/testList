//
//  ListModel.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

class ListModel: Equatable {
 
    var id: Int = 0
    var listDescription: String = ""
    
}

extension ListModel {
    static func ==(lhs: ListModel, rhs: ListModel) -> Bool {
        return lhs.id == rhs.id && rhs.id == lhs.id
    }
}
