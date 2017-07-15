//
//  RealmServiceImpl.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation
import RealmSwift

class RealmServiceImpl: RealmService
{
    
    // MARK: - property
    
    fileprivate var realm: Realm!
    // may be use for read data in background
    
    // MARK: - initial
    
    init() {
        realm = try! Realm()
    }
    
    // MARK: - RealmService
    
    func read<T: Object>(_ filter: String?,
              orderBy: [String: Bool]?) -> [T]
    {
        var objects = realm.objects(T.self)
        if let filter = filter {
            objects = objects.filter(filter)
        }
        if let orderBy = orderBy {
            var descriptors = [SortDescriptor]()
            for (field, asc) in orderBy {
                let descriptor = SortDescriptor(keyPath: field, ascending: asc)
                descriptors.append(descriptor)
            }
            objects = objects.sorted(by: descriptors)
        }
        var ts = [T]()
        for t in objects {
            ts.append(t)
        }
        return ts
    }
    
    func write(_ objects: [Object]?,
               needUpdate: Bool,
               successHandler: () -> Void)
    {
        guard let objects = objects else {
            return
        }
        realm.beginWrite()
        for object in objects {
            realm.add(object, update: needUpdate)
        }
        try! realm.commitWrite()
        successHandler()
    }
    
    func deleteAll() {
        realm.beginWrite()
        realm.deleteAll()
        try! realm.commitWrite()
    }
    
    func truncateModel<T: Object>(_ type: T.Type, byFilter: String?, complition: (() -> Void)?) {
        let objects = read(byFilter, orderBy: nil) as [T]
        realm.beginWrite()
        realm.delete(objects)
        try! realm.commitWrite()
        complition?()
    }
    
}
