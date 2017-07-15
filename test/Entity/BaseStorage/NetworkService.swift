//
//  NetworkService.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

protocol NetworkService {
    
    func process<T: Mappable>(response: T.Type,
                 request: URLRequest,
                 result: (Result<T.Type>) -> Void)
    
}
