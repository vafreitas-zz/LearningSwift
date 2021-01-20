//
//  TableViewHeader.swift
//  LearningSwift
//
//  Created by victor.freitas on 20/01/21.
//

import UIKit

class TableViewHeader: UITableViewHeaderFooterView {

    // MARK: Properties

    @IBOutlet weak var label: UILabel!

    func setup(text: String) {
        label.text = text
    }
    
}
