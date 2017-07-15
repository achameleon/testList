//
//  MainContainer.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation
import Swinject
import UIKit

class MainContainer {
    
    private var container: Container!
    private var window: UIWindow!
    
    init() {
        container = Container()
        let assembler = Assembler(container: container)
        assembler.apply(assemblies: [RepositoryAssemply(),
                                     ControllerAssembly()])
    }
    
    func start() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let controller = container.resolve(ListModuleConfigurator.self)!
        window.rootViewController = controller.viewController
        window.makeKeyAndVisible()
    }
    
}
