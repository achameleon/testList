//
//  Global.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

// short version of NSLocalizedString
func loc(_ key: String) -> String
{
    return NSLocalizedString(key, comment: "")
}

func loc(_ key: String, parameters: CVarArg ...) -> String
{
    return String(format: NSLocalizedString(key, comment: ""), arguments: parameters)
}

func loc(_ key: String, fromTable: String) -> String
{
    return NSLocalizedString(key, tableName: fromTable, bundle: Bundle.main, value: "", comment: "")
}

