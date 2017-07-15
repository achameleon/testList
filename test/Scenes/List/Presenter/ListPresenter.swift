//
//  ListListPresenter.swift
//  test
//
//  Created by Skorodumov Anton on 15/07/2017.
//  Copyright © 2017 chameleon. All rights reserved.
//

class ListPresenter: ListModuleInput {

    weak var view: ListViewInput!
    var interactor: ListInteractorInput!
    var router: ListRouterInput!
    var userId: Int!

    var friends: [FriendModel]!
    
    init() {
        friends = [FriendModel]()
        userId = 8820700 // Xenitch
    }
    
    func viewIsReady() {
        view.setupInitialState()
        interactor.requestFriendsInformation(userId: userId)
    }
}

extension ListPresenter: ListViewOutput {
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRowInSection(section: Int) -> Int {
        return friends.count
    }
    
    func dataForCellForRowSection(section: Int, row: Int) -> FriendModel {
        return friends[row]
    }
    
    func selectRowInRowSection(section: Int, row: Int) {
        let item = friends[row]
        router.moveToListDescription(item: item)
    }
    
}

extension ListPresenter: ListInteractorOutput {
    
    func successLoadedFriendsInformation(friendsList: [FriendModel]) {
        friends = friendsList
        view.reload()
    }
    
}
