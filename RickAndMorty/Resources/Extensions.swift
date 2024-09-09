//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Egor Moroz on 6.09.24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
