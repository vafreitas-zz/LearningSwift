//
//  CPFView.swift
//  LearningSwift
//
//  Created by victor.freitas on 11/02/21.
//

import Core
import Components
import UIKit

class CPFView: BaseView {

    var cpfLabel = UILabel() .. {
        $0.text = "Client CPF"
    }

    var cpfTextField = UITextField() .. {
        $0.placeholder = "CPF"
    }

    override func configureSubviews() {
        addSubview(cpfLabel)
        addSubview(cpfTextField)
    }

    override func configureConstraints() {
        cpfLabel.topToSuperview(offset: 20, usingSafeArea: true)
        cpfLabel.leadingToSuperview(offset: 24)
        cpfLabel.trailingToSuperview(offset: 24)

        cpfTextField.topToBottom(of: cpfLabel, offset: 12)
        cpfTextField.leadingToSuperview(offset: 24)
        cpfTextField.trailingToSuperview(offset: 24)
        cpfTextField.height(40)
    }

}
