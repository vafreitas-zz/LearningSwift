//
//  NameView.swift
//  LearningSwift
//
//  Created by victor.freitas on 11/02/21.
//

import Components
import Core
import UIKit

class NameView: BaseView {

    var nameLabel = UILabel() .. {
        $0.text = "Client Name"
    }

    var nameTextField = UITextField() .. {
        $0.placeholder = "Name"
    }

    var continueButton = UIButton() .. {
        $0.setTitle("Continuar", for: .normal)
    }

    override func configureSubviews() {
        addSubview(nameLabel)
        addSubview(nameTextField)
        addSubview(continueButton)
    }

    override func configureConstraints() {
        nameLabel.topToSuperview(offset: 20, usingSafeArea: true)
        nameLabel.leadingToSuperview(offset: 24)
        nameLabel.trailingToSuperview(offset: 24)

        nameTextField.topToBottom(of: nameLabel, offset: 12)
        nameTextField.leadingToSuperview(offset: 24)
        nameTextField.trailingToSuperview(offset: 24)
        nameTextField.height(40)

        continueButton.bottomToSuperview(offset: -24, usingSafeArea: true)
        continueButton.leadingToSuperview(offset: 24)
        continueButton.trailingToSuperview(offset: 24)
        continueButton.height(40)
    }
}
