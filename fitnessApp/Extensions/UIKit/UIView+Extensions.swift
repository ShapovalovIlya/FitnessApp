//
//  UIView+Extensions.swift
//  fitnessApp
//
//  Created by Илья Шаповалов on 31.05.2022.
//

import UIKit

extension UIView {
    
    func addShadowOnView() {
        layer.shadowColor = UIColor.gray.cgColor
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 1.0
    }
    
}