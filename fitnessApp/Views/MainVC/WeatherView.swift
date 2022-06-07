//
//  WeatherView.swift
//  fitnessApp
//
//  Created by Илья Шаповалов on 06.06.2022.
//

import UIKit

class WeatherView: UIView {
    
    //MARK: - Private Properties
    private let weatherLabel: UILabel = {
        let label = UILabel()
        label.text = "Sun"
        label.textColor = .specialGray
        label.font = .robotoMedium18()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - init()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .white
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(weatherLabel)
    }
    
    private func setConstraints() {
        // weatherLabel constraints
        NSLayoutConstraint.activate([
        
        ])
    }
    
}
