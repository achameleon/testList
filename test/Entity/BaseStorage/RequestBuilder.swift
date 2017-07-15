//
//  RequestBuilder.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

protocol RequestBuilder {

    func build(request: Request) -> URLRequest?
    
}

class RequestBuilderImpl {
    
    init() {
        
    }
    
    internal func collectURL(request: Request) -> URL? {
        guard request.method == .GET else {
            return URL(string: request.url + request.path)
        }
        return URL(string: request.url + request.path + request.query)
    }
    
}

extension RequestBuilderImpl: RequestBuilder {
    
    func build(request: Request) -> URLRequest? {
        guard let url = collectURL(request: request) else { return nil }
        var r = URLRequest(url: url,
                           cachePolicy: URLRequest.CachePolicy.useProtocolCachePolicy,
                           timeoutInterval: Const.Network.requestTimeout)
        r.httpMethod = request.method.rawValue
        if request.method == .POST {
            if let data = request.data {
                print (data)
                r.httpBody = data
            }
        }
        for (key, value) in request.defaultHeaders {
            r.setValue(value, forHTTPHeaderField: key)
        }
        return r
    }
    
    
}
