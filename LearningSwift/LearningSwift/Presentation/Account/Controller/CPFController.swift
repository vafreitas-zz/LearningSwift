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

    override func loadView() {
        view = rootView
    }

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "CPF Controller"
    }
}
