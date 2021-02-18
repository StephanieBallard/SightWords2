//
//  UIView.swift
//  SightWordsTwoProgrammaticUI
//
//  Created by Stephanie Ballard on 2/8/21.
//

import UIKit

extension UIView {
    func addSubviews(subviews: UIView...) {
        subviews.forEach {
            addSubview($0)
        }
    }
}
