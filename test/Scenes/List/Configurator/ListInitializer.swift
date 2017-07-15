//
//  ListListInitializer.swift
//  test
//
//  Created by Skorodumov Anton on 15/07/2017.
//  Copyright © 2017 chameleon. All rights reserved.
//

import UIKit

class ListModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var listViewController: ListViewController!

    override func awakeFromNib() {

        let configurator = ListModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: listViewController)
    }

}
