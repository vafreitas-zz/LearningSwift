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
        $0.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        $0.register(UINib(nibName: "TableViewHeader", bundle: .main), forHeaderFooterViewReuseIdentifier: "Header")
    }

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

extension TableView: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let view = Bundle.main.loadNibNamed("TableViewHeader", owner: self, options: nil)?.first as? TableViewHeader else {
            return .init()
        }

        return view
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell else {
            return .init()
        }

        cell.setup(text: "Row: \(indexPath.row)")
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100.0
    }


}
