//
//  TableViewCell.swift
//  LearningSwift
//
//  Created by victor.freitas on 20/01/21.
//

import UIKit
import Core

class TableViewCell: UITableViewCell {

    // MARK: Properties

    let label = UILabel() .. {
        $0.text = ""
    }

    // MARK: Initializer
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "cell")
        addSubview(label)

        label.edgesToSuperview(excluding: .leading)
        label.leadingToSuperview(offset: 24)

        selectionStyle = .none
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup(text: String) {
        label.text = text
    }
}
