//
//  ListListViewController.swift
//  test
//
//  Created by Skorodumov Anton on 15/07/2017.
//  Copyright © 2017 chameleon. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    var output: ListViewOutput!

    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        tableView.register(UINib(nibName: "ListCell", bundle: Bundle.main), forCellReuseIdentifier: "ListCell")
        tableView.delegate = self
        tableView.dataSource =self
    }

}

extension ListViewController: ListViewInput {
 
    func setupInitialState() {
    }
    
    func reload() {
        tableView.reloadData()
    }
    
}

extension ListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        output.selectRowInRowSection(section: indexPath.section, row: indexPath.row)
    }
    
}

extension ListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return output.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return output.numberOfRowInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = output.dataForCellForRowSection(section: indexPath.section, row: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! ListCell
        cell.lblText.text = item.firstName + "" + item.lastName
        return cell
    }
    
}
