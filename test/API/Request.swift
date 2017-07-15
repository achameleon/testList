//
//  Request.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation


protocol Request {
    
    var url: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var data: Data? { get }
    var query: String { get }
    var defaultHeaders: [String: String] { get }
    
}


extension Request {
    
    var url: String {
        return Const.Network.debug ? Const.Network.developmentURL : Const.Network.productionURL
    }
    
    var path: String {
        return ""
    }
    
    var method: HTTPMethod {
        return .GET
    }
    
    var data: Data? {
        return nil
    }
    
    var query: String {
        return ""
    }
    
    var defaultHeaders: [String: String] {
        return [String: String]()
    }
    
}
