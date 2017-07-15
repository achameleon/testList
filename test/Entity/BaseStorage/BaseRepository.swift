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
    
    // MARK: - stores
    
    internal var net: NetworkService!
    internal var db: RealmService!
    
    // MARK: - initial
    
    convenience init(network: NetworkService,
                     dbService: RealmService) {
        self.init()
        net = network
        db = dbService
        objectList = [T]()
    }
    
}
