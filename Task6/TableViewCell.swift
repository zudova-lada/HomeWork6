//
//  TableViewCell.swift
//  Task6
//
//  Created by Лада on 24/10/2019.
//  Copyright © 2019 Лада. All rights reserved.
//


import UIKit

class TableViewCell: UITableViewCell {
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
    }
    
}
