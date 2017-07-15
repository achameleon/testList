//
//  File.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

class BaseRepository<T: Equatable> {
    
    internal var objectList: [T]!

    // MARK: - initial
    
    init() {
        objectList = [T]()
    }
    
}
