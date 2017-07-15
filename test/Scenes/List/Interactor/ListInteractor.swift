//
//  ListListInteractor.swift
//  test
//
//  Created by Skorodumov Anton on 15/07/2017.
//  Copyright © 2017 chameleon. All rights reserved.
//

class ListInteractor {

    weak var output: ListInteractorOutput!
    var repository: ListRepository!
    
    init(listRepository: ListRepository) {
        repository = listRepository
    }

}

extension ListInteractor: ListInteractorInput {
    
    func requestFriendsInformation() {
        repository.loadNews(listener: self)
    }
    
}

extension ListInteractor: ListRepositoryListener {
    
    func successLoadedFriends(friends: [FriendModel]) {
        output.successLoadedFriendsInformation(friendsList: friends)
    }
    
    func failure(error: Error?) {
        print (error.debugDescription)
    }
    
}
