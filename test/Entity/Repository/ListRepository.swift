//
//  ListRepository.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

protocol ListRepository {
    
    func loadNews()
    
}

class ListRepositoryImpl: BaseRepository<ListModel> {
    
}

extension ListRepositoryImpl: ListRepository {
    
    func loadNews() {
    
    }
    
}
