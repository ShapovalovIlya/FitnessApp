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
    
    private lazy var addWorkoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .specialYellow
        button.layer.cornerRadius = 10
        button.setTitle("Add workout", for: .normal)
        button.titleLabel?.font = .robotoMedium12()
        button.tintColor = .specialDarkGreen
        button.imageEdgeInsets = UIEdgeInsets(top: 0,
                                              left: 20,
                                              bottom: 15,
                                              right: 0)
        button.titleEdgeInsets = UIEdgeInsets(top: 50,
                                              left: -40,
                                              bottom: 0,
                                              right: 0)
        button.setImage(UIImage(named: "addWorkout"), for: .normal)
        button.addTarget(self, action: #selector(addWorkoutButtonTapped), for: .touchUpInside)
        button.addShadowOnView()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let workoutTodayLabel: UILabel = {
       let label = UILabel()
        label.text = "Workout today"
        label.textColor = .lightGray
        label.font = .robotoMedium12()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let noWorkoutImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "backgroundImage")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let calendarView = CalendarView()
    private let weatherView = WeatherView()
    private let workOutTableView = WorkOutTableView()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstrains()
        workOutTableView.isHidden = true
        noWorkoutImageView.isHidden = false
        
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
        view.addSubview(weatherView)
        view.addSubview(workoutTodayLabel)
        view.addSubview(workOutTableView)
        view.addSubview(noWorkoutImageView)
        
    }
    
    //MARK: - Private Methods
    @objc private func addWorkoutButtonTapped() {
        print("addWorkoutButtonTapped")
        let newWorkoutVC = NewWorkoutViewController()
        present(newWorkoutVC, animated: true)
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
        // weatherView constraints
        NSLayoutConstraint.activate([
            weatherView.topAnchor.constraint(equalTo: calendarView.bottomAnchor, constant: 5),
            weatherView.leadingAnchor.constraint(equalTo: addWorkoutButton.trailingAnchor, constant: 10),
            weatherView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            weatherView.heightAnchor.constraint(equalToConstant: 80)
        ])
        // workoutTodayLabel
        NSLayoutConstraint.activate([
            workoutTodayLabel.topAnchor.constraint(equalTo: addWorkoutButton.bottomAnchor, constant: 5),
            workoutTodayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            workoutTodayLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        // workOutTableView constraints
        NSLayoutConstraint.activate([
            workOutTableView.topAnchor.constraint(equalTo: workoutTodayLabel.bottomAnchor, constant: 5),
            workOutTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            workOutTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            workOutTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        // noWorkoutImageView constrains
        NSLayoutConstraint.activate([
            noWorkoutImageView.topAnchor.constraint(equalTo: workoutTodayLabel.bottomAnchor),
            noWorkoutImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            noWorkoutImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            noWorkoutImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),
            
        ])
    }
    
}


