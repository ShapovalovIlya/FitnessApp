//
//  DateAndRepeatView.swift
//  fitnessApp
//
//  Created by Илья Шаповалов on 11.06.2022.
//

import UIKit

class DateAndRepeatView: UIView {
    
    //MARK: - init()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Methods
    private func setupView() {
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 10
    }
}
