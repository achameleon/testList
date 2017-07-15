//
//  ControllerAssembly.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import Foundation
import Swinject

class ControllerAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(ListModuleConfigurator.self) { r in
            ListModuleConfigurator(resolver: r)
        }
    }
    
}
