//
//  ViewController.swift
//  fitnessApp
//
//  Created by Илья Шаповалов on 31.05.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: - Privat properties
    private let userFotoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0.760784328, green: 0.760784328, blue: 0.7607844472, alpha: 1)
        imageView.layer.borderWidth = 5
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let calendarView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialGreen
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "User Name"
        label.textColor = .specialGray
        label.font = .robotoMedium24()
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let addWorkoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .specialYellow
        button.layer.cornerRadius = 10
        button.setTitle("Add workout", for: .normal)
        button.titleLabel?.font = .robotoMedium12()
        button.tintColor = .specialGreen
        
        button.setImage(UIImage(named: "addWorkout"), for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstrains()
    }
    
    override func viewDidLayoutSubviews() {
        userFotoImageView.layer.cornerRadius = userFotoImageView.frame.width / 2
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackGround
        view.addSubview(calendarView)
        view.addSubview(userFotoImageView)
        view.addSubview(userNameLabel)
        view.addSubview(addWorkoutButton)
        
    }
    
}
//MARK: - NSLayoutConstraint
extension MainViewController {
    
    private func setConstrains() {
        // userFotoImageView constraints
        NSLayoutConstraint.activate([
            userFotoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            userFotoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            userFotoImageView.widthAnchor.constraint(equalToConstant: 100),
            userFotoImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        // calendarView constraints
        NSLayoutConstraint.activate([
            calendarView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            calendarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            calendarView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            calendarView.heightAnchor.constraint(equalToConstant: 70)
        ])
        // userNameLabel constraints
        NSLayoutConstraint.activate([
            userNameLabel.leadingAnchor.constraint(equalTo: userFotoImageView.trailingAnchor, constant: 5),
            userNameLabel.bottomAnchor.constraint(equalTo: calendarView.topAnchor, constant: -10),
            userNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        // addWorkoutButton constraints
        NSLayoutConstraint.activate([
            addWorkoutButton.topAnchor.constraint(equalTo: calendarView.bottomAnchor, constant: 5),
            addWorkoutButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            addWorkoutButton.heightAnchor.constraint(equalToConstant: 80),
            addWorkoutButton.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
    
}


