//
//  NetworkServiceImpl.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

class NetworkServiceImpl {
    
    var session: URLSession!
    
    init() {
        generateSession()
    }
    
    internal func generateSession() {
        let config = URLSessionConfiguration.default
        // makes it work like a queue
        config.httpMaximumConnectionsPerHost = Const.Network.connectionCount
        // dont understand the difference of parameters below
        config.timeoutIntervalForRequest = Const.Network.requestTimeout
        config.timeoutIntervalForResource = Const.Network.requestTimeout
        //cahce policy
        config.requestCachePolicy = .reloadIgnoringLocalCacheData
        ///session = URLSession(
    }
    
    
}

extension NetworkServiceImpl: NetworkService {
    
    func process<T: Mappable>(response: T.Type,
                 request: URLRequest,
                 result: (Result<T.Type>) -> Void) {
        
    }
    
}
