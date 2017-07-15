//
//  ArrayHandler.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

class ArrayHandler<T: Mappable>: Mappable {
    
    var list: [T]!
    
    required init?(map: AnyObject?) {
        list = [T]()
        guard let mapList = map as? [AnyObject] else { return nil }
        for m in mapList {
            guard let t = T(map: m) else { return }
            list.append(t)
        }
    }
    
}

