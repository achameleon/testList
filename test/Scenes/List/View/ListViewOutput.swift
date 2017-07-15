//
//  ListListViewOutput.swift
//  test
//
//  Created by Skorodumov Anton on 15/07/2017.
//  Copyright © 2017 chameleon. All rights reserved.
//

protocol ListViewOutput {

    /**
        @author Skorodumov Anton
        Notify presenter that view is ready
    */

    func viewIsReady()
    
    func numberOfSections() -> Int
    
    func numberOfRowInSection(section: Int) -> Int
    
    func dataForCellForRowSection(section: Int, row: Int) -> FriendModel
    
    func selectRowInRowSection(section: Int, row: Int)
    
}
