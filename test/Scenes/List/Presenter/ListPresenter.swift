//
//  ListListPresenter.swift
//  test
//
//  Created by Skorodumov Anton on 15/07/2017.
//  Copyright © 2017 chameleon. All rights reserved.
//

class ListPresenter: ListModuleInput, ListViewOutput, ListInteractorOutput {

    weak var view: ListViewInput!
    var interactor: ListInteractorInput!
    var router: ListRouterInput!

    func viewIsReady() {

    }
}
