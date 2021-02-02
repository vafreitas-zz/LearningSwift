//
//  TableViewCell.swift
//  LearningSwift
//
//  Created by victor.freitas on 20/01/21.
//

import UIKit
import Core

protocol TableViewCellDelegate: AnyObject {
    func textFieldChange(_ textField: UITextField, string: String, textFieldType: TextFieldType)
}

class TableViewCell: UITableViewCell {

    // MARK: Outlets

    @IBOutlet weak var textField: UITextField!

    // MARK: Properties

    var textFieldType: TextFieldType = .none
    weak var delegate: TableViewCellDelegate?

    // MARK: Setup Methods

    func setup(model: TextFieldModel) {
        textField.placeholder = model.title
        textFieldType = model.type
        textField.delegate = self
    }
}

extension TableViewCell: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        delegate?.textFieldChange(textField, string: string, textFieldType: textFieldType)
        return true
    }
}

enum TextFieldType {
    case cep
    case address
    case birthdate
    case city
    case neighborhood
    case number
    case genre
    case complement
    case none
}
