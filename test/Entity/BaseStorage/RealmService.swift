//
//  RealmService.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation
import RealmSwift

protocol RealmService: class {
    
    // @author Skorodumov Anton
    // ПРочитать данные из кеша по фильтру
    func read<T: Object>(_ filter: String?,
              orderBy: [String: Bool]?) -> [T]
    
    // @author Skorodumov Anton
    // Записать изменения в базу отдельной транзакцией
    func write(_ objects: [Object]?,
               needUpdate: Bool,
               successHandler: () -> Void)
    
    // @author Skorodumov Anton
    // Уничтожить всю базу нахуй
    func deleteAll()
    
    // @author Gutov Andrey
    // Удаляем записи из базы по фильтру
    func truncateModel<T: Object>(_ type: T.Type, byFilter: String?, complition: (() -> Void)?)
    
}

