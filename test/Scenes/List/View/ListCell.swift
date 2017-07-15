//
//  ListCell.swift
//  test
//
//  Created by Anton Skorodumov on 15.07.17.
//  Copyright © 2017 chameleon production. All rights reserved.
//

import UIKit
import Kingfisher

class ListCell: UITableViewCell {

    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var ivPhoto: UIImageView!
    @IBOutlet weak var vwCloud: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(friend: FriendModel) {
        vwCloud.layer.cornerRadius = 8.0
        vwCloud.layer.masksToBounds = true
        lblText.text = friend.fullName
        if let url = friend.url {
            ivPhoto.kf.setImage(with: url)
        }
    }
    
}
