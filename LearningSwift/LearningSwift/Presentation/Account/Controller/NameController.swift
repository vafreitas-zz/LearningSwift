//
//  NameController.swift
//  LearningSwift
//
//  Created by victor.freitas on 11/02/21.
//

import UIKit

class NameController: UIViewController {

    // MARK: Properties

    let rootView = NameView()

    override func loadView() {
        view = rootView
    }

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Name Controller"
    }
}
