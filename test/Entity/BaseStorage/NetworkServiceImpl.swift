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
    var builder: RequestBuilder!
    
    init(requestBuilder: RequestBuilder) {
        builder = requestBuilder
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
        session = URLSession(configuration: config)
    }
    
    
}

extension NetworkServiceImpl: NetworkService {
    
    func process<T: Mappable>(response: T.Type,
                 request: Request,
                 result: @escaping (Result<T>) -> Void) {
        guard let urlRequest = builder.build(request: request) else {
            result(Result.failure(LocalError.invalidAPIURL()))
            return
        }
        let dataData = session.dataTask(with: urlRequest)
        { (data, response, error) in
            guard error == nil else {
                DispatchQueue.main.async {
                    result(Result.failure(error))
                }
                return
            }
            let httpResponse = response as? HTTPURLResponse
            guard httpResponse?.statusCode == Const.HTTPCode.ok else {
                DispatchQueue.main.async {
                    result(Result.failure(LocalError.httpErrorCode(httpResponse?.statusCode ?? 0)))
                }
                return
            }
            let json = data?.serialize
            let responseObject = T(map: json)
            DispatchQueue.main.async {
                result(Result.success(responseObject))
            }
        }
        dataData.resume()
    }
    
}
