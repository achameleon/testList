//
//  LocalError.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

enum LocalError: Error {
    
    case httpErrorCode(Int)
    case invalidAPIURL()
    case failureNewsLoaded()
    
}
