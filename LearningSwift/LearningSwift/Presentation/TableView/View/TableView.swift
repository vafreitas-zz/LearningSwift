//
//  TableView.swift
//  LearningSwift
//
//  Created by victor.freitas on 20/01/21.
//

import UIKit
import Components
import Core

class TableView: BaseView {

    // MARK: Properties

    lazy var tableView = UITableView() .. {
        $0.delegate = self
        $0.dataSource = self
        $0.register(.init(nibName: "TableViewCell", bundle: .main), forCellReuseIdentifier: "cell")
        $0.register(UINib(nibName: "TableViewHeader", bundle: .main), forHeaderFooterViewReuseIdentifier: "Header")
    }

    var textFields: [TextFieldModel] = [
        .init(title: "CEP", type: .cep, information: ""),
        .init(title: "ADDRESS", type: .address, information: ""),
        .init(title: "BIRTHDATE", type: .birthdate, information: ""),
        .init(title: "CITY", type: .city, information: ""),
        .init(title: "NEIGHBORHOOD", type: .neighborhood, information: ""),
        .init(title: "GENRE", type: .genre, information: ""),
        .init(title: "NUMBER", type: .number, information: ""),
        .init(title: "COMPLEMENT", type: .complement, information: "")
    ]

    // MARK: Lifecycle

    override func configureSubviews() {
        super.configureSubviews()
        addSubview(tableView)

    }

    override func configureConstraints() {
        super.configureConstraints()
        tableView.edgesToSuperview()

    }
}

// MARK: TableViewCell Delegate

extension TableView: TableViewCellDelegate {
    func textFieldChange(_ textField: UITextField, string: String, textFieldType: TextFieldType) {

        switch textFieldType {
        case .cep:
            textField.text = string + "C"

        case .address:
            textField.text = string + "A"

        case .birthdate:
            textField.text = string + "B"

        case .city:
            textField.format(to: .cpf)

        case .complement:
            textField.text = string + "COM"

        case .genre:
            textField.text = string + "S"

        case .neighborhood:
            textField.text = string + "N"

        default:
            break
        }
    }
}

// MARK: TableView Delegate

extension TableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textFields.count
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let view = Bundle.main.loadNibNamed("TableViewHeader", owner: self, options: nil)?.first as? TableViewHeader else {
            return .init()
        }

        return view
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else {
            return .init()
        }

        cell.setup(model: textFields[indexPath.row])
        cell.delegate = self
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100.0
    }


}

// MARK: Format

extension UITextField {
    enum FormatTypes {
        case cpf
        case cnpj
    }

    func format(to type: FormatTypes) {
        switch type {
        case .cpf:
            self.text = self.text?.appending("CPF")
        case .cnpj:
            self.text = self.text?.appending("CNPJ")
        }

    }
}
