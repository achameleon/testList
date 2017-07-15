//
//  Const+Network.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

extension Const {
    
    struct Network {
        
        static let connectionCount: Int = 3
        static let requestTimeout: TimeInterval = 10
     
        static let debug: Bool = true
        
        static let productionURL: String = "https://api.vk.com"
        static let developmentURL: String = "https://api.vk.com"
        
    }
    
}
