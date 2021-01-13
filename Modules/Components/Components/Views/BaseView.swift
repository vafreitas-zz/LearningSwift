//
//  BaseView.swift
//  Components
//
//  Created by victor.freitas on 13/01/21.
//

import UIKit

open class BaseView: UIView {

    public init() {
        super.init(frame: .zero)
        backgroundColor = .white
        configureSubviews()
        configureConstraints()
    }

    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureSubviews()
        configureConstraints()
    }

    @available(*, unavailable)
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func configureSubviews() {}
    open func configureConstraints() {}
}
