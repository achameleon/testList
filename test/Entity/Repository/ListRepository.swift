//
//  ListRepository.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation

protocol ListRepositoryListener {
    
    func successLoadedNews(news: [FriendModel])
    func failure(error: Error?)
    
}

protocol ListRepository {
    
    func loadNews(listener: ListRepositoryListener)
    
}

class ListRepositoryImpl: BaseRepository<FriendModel> {
    
    internal var db: FriendsLocalStorage!
    internal var net: NetworkService!
    
    // MARK: - initial
    
    convenience init(network: NetworkService,
                     dbService: FriendsLocalStorage) {
        self.init()
        net = network
        db = dbService
    }
    
}

extension ListRepositoryImpl: ListRepository {
    
    func loadNews(listener: ListRepositoryListener) {
        listener.successLoadedNews(news: db.getFriends())
        net.process(response: ArrayHandler<FriendModel>.self,
                    request: VKAPI.friends())
        { [weak self] (result) in
            if result.isSuccess {
                guard let list = result.value?.list else {
                    listener.failure(error: LocalError.failureNewsLoaded())
                    return
                }
                self?.db.saveFriends(friends: list)
                listener.successLoadedNews(news: list)
            }
        }
    }
    
}
