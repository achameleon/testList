//
//  RepositoryAssemply.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation
import Swinject

class RepositoryAssemply: Assembly {
    
    func assemble(container: Container) {

        container.register(RequestBuilderImpl.self) { r in
            RequestBuilderImpl()
        }
        container.register(NetworkServiceImpl.self) { r in
            NetworkServiceImpl(requestBuilder: r.resolve(RequestBuilderImpl.self)!)
        }
        container.register(RealmServiceImpl.self) { r in
            RealmServiceImpl()
        }
        container.register(FriendsLocalStorage.self) { r in
            FriendsLocalStorage(realmService: r.resolve(RealmServiceImpl.self)!)
        }
        container.register(ListRepositoryImpl.self) { r in
            ListRepositoryImpl(network: r.resolve(NetworkServiceImpl.self)!,
                               dbService: r.resolve(FriendsLocalStorage.self)!)
        }
        
        
    }
    
}
