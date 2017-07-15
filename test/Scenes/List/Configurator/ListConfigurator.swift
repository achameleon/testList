//
//  ListModuleConfigurator.swift
//  test
//
//  Created by Skorodumov Anton on 15/07/2017.
//  Copyright © 2017 chameleon. All rights reserved.
//

import UIKit
import Swinject

class ListModuleConfigurator {

    // MARK - initial
    
    public var viewController: ListViewController!
    public var moduleInput: ListModuleInput!

    init(resolver: Resolver) 
    {
        let listViewController = ListViewController()

        let router = ListRouter(controller: listViewController)

        let presenter = ListPresenter()
        presenter.view = listViewController
        presenter.router = router

        let interactor = ListInteractor(listRepository: resolver.resolve(ListRepositoryImpl.self)!)
        interactor.output = presenter

        presenter.interactor = interactor
        listViewController.output = presenter
        
        viewController = listViewController
        moduleInput = presenter
    }

}
