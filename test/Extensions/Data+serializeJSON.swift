//
//  Data+serializeJSON.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

extension Data {
    
    var serialize: AnyObject? {
        do {
            let dict = try JSONSerialization.jsonObject(with: self, options: []) as AnyObject
            return dict
        } catch {}
        return nil
    }
    
}
