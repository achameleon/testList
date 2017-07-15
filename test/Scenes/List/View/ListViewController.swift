//
//  ListListViewController.swift
//  test
//
//  Created by Skorodumov Anton on 15/07/2017.
//  Copyright © 2017 chameleon. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, ListViewInput {

    var output: ListViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: ListViewInput
    func setupInitialState() {
    }
}
