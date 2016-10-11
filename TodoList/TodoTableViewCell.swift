//
//  TodoTableViewCell.swift
//  TodoList
//
//  Created by George on 10/10/16.
//  Copyright © 2016 George. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {
    // MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
