//
//  VKAPI.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation


enum VKAPI {
    
    case friends(Int)
    
}

extension VKAPI: Request {
    
    var path: String {
        switch self {
        case .friends(_):
            return "/method/friends.get"
        }
    }
    
    var query: String {
        switch self {
        case .friends(let id):
            return "?v=5.67&count=1000&fields=photo_200_orig&user_id=\(id)&offset=0"
        }
    }
    
}
