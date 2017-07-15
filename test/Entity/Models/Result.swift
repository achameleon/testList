//
//  Result.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

enum Result<Value> {
    case success(Value?)
    case failure(Error?)
    
    /// Returns `true` if the result is a success, `false` otherwise.
    internal var isSuccess: Bool {
        switch self {
        case .success:
            return true
        case .failure:
            return false
        }
    }
    
    /// Returns `true` if the result is a failure, `false` otherwise.
    internal var isFailure: Bool {
        return !isSuccess
    }
    
    /// Returns the associated value if the result is a success, `nil` otherwise.
    internal var value: Value? {
        switch self {
        case .success(let value):
            return value
        case .failure:
            return nil
        }
    }
    
    /// Returns the associated error value if the result is a failure, `nil` otherwise.
    internal var error: Error? {
        switch self {
        case .success:
            return nil
        case .failure(let error):
            return error
        }
    }
}
