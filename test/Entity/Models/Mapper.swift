//
//  Mapper.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

class Mapper<T, Y>
{
    
    func mapTo(item: Y) -> T? {
        return nil
    }
    
    func mapFrom(item: T) -> Y? {
        return nil
    }
    
    func mapTo(item: Y?) -> T? {
        return nil
    }
    
    func mapFrom(item: T?) -> Y? {
        return nil
    }
    
}
