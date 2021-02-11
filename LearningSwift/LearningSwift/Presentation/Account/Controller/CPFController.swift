//
//  CPFController.swift
//  LearningSwift
//
//  Created by victor.freitas on 11/02/21.
//

import UIKit

class CPFController: UIViewController {

    // MARK: Properties

    let rootView = CPFView()
    let viewModel: CPFViewModel

    override func loadView() {
        view = rootView
    }

    // MARK: Initializer

    init(viewModel: CPFViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CPF Controller"
    }
}
