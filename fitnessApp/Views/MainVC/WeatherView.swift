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
        label.text = "Sunny"
        label.textColor = .specialGray
        label.font = .robotoMedium18()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weatherDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Nice weather for workout! Let's go outside!"
        label.textAlignment = .left
        label.numberOfLines = 0
        label.minimumScaleFactor = 0.5
        label.textColor = .lightGray
        label.font = .robotoMedium14()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weatherImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sunImage")
        image.clipsToBounds = true
        image.backgroundColor = .none
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
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
    //MARK: - setupViews
    private func setupViews() {
        backgroundColor = .white
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        addShadowOnView()
        
        addSubview(weatherLabel)
        addSubview(weatherDescriptionLabel)
        addSubview(weatherImage)
    }
    //MARK: - setConstraints
    private func setConstraints() {
        // weatherLabel constraints
        NSLayoutConstraint.activate([
            weatherLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            weatherLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            weatherLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        // weatherImage constrains
        NSLayoutConstraint.activate([
            weatherImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            weatherImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            weatherImage.heightAnchor.constraint(equalToConstant: 60),
            weatherImage.widthAnchor.constraint(equalToConstant:60)
            
        ])
        // weatherDescriptionLabel
        NSLayoutConstraint.activate([
            weatherDescriptionLabel.topAnchor.constraint(equalTo: weatherLabel.bottomAnchor, constant: 5),
            weatherDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            weatherDescriptionLabel.trailingAnchor.constraint(equalTo: weatherImage.leadingAnchor,constant: -10),
            weatherDescriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
        
    }
    
}
