//
//  ListListRouter.swift
//  test
//
//  Created by Skorodumov Anton on 15/07/2017.
//  Copyright © 2017 chameleon. All rights reserved.
//

import UIKit

class ListRouter {

    var routerController: UIViewController?
    
    init(controller: UIViewController) {
        routerController = controller
    }
    
}

extension ListRouter: ListRouterInput {

    func moveToListDescription(item: FriendModel) {
        // TODO: - navigation
        //routerController?.navigationController?.pushViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
    }
    
}
