//
//  ListModelMapper.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

class ListModelMapper: Mapper<ListModel, RListModel> {
    
    override func mapTo(item: RListModel) -> ListModel? {
        let object = ListModel()
        object.id = item.id
        object.listDescription = item.listDescription
        return object
    }
    
    override func mapFrom(item: ListModel) -> RListModel? {
        let object = RListModel()
        object.id = item.id
        object.listDescription = item.listDescription
        return object
    }
    
}
