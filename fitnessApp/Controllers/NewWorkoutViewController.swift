//
//  NewWorkoutViewController.swift
//  fitnessApp
//
//  Created by Илья Шаповалов on 11.06.2022.
//

import UIKit

class NewWorkoutViewController: UIViewController {
    
    //MARK: - Privat Properties
    private let newWorkoutLabel: UILabel = {
        let label = UILabel()
        label.text = "New Workout"
        label.font = .robotoMedium24()
        label.textColor = .specialGray
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var closeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(named: "closeImage"), for: .normal)
        button.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let nameLabel: UILabel = {
       let label = UILabel()
        label.text = "Name"
        label.font = .robotoMedium14()
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let textField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .specialBrown
        textField.borderStyle = .none
        textField.layer.cornerRadius = 10
        textField.textColor = .specialGray
        textField.font = .robotoBold20()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.clearButtonMode = .always
        textField.returnKeyType = .done
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let dateAndRepeatLabel: UILabel = {
        let label = UILabel()
        label.text = "Date and repeat"
        label.font = .robotoMedium14()
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let repsOrTimerLabel: UILabel = {
        let label = UILabel()
        label.text = "Reps ot timer"
        label.font = .robotoMedium14()
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .specialGreen
        button.setTitle("SAVE", for: .normal)
        button.titleLabel?.font = .robotoBold16()
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let dateAndRepeatView = DateAndRepeatView()
    private let repsOrTimerView = RepsOrTimerView()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    //MARK: - Privat Methods
    @objc private func saveButtonTapped() {
        print("Save button tapped!")
    }
    
    @objc private func closeButtonTapped() {
        dismiss(animated: true)
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackGround
        view.addSubview(newWorkoutLabel)
        view.addSubview(closeButton)
        view.addSubview(nameLabel)
        view.addSubview(textField)
        view.addSubview(dateAndRepeatLabel)
        view.addSubview(dateAndRepeatView)
        view.addSubview(repsOrTimerLabel)
        view.addSubview(repsOrTimerView)
    }
    private func setConstraints() {
        // newWorkoutLabel constraints
        NSLayoutConstraint.activate([
            newWorkoutLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            newWorkoutLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        // closeImage constraints
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        // nameLabel constraints
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: newWorkoutLabel.bottomAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        ])
        // textField contraints
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        // dateAndRepeatLabel constraints
        NSLayoutConstraint.activate([
            dateAndRepeatLabel.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20),
            dateAndRepeatLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        ])
        // dateAndRepeatView constraints
        NSLayoutConstraint.activate([
            dateAndRepeatView.topAnchor.constraint(equalTo: dateAndRepeatLabel.bottomAnchor, constant: 10),
            dateAndRepeatView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            dateAndRepeatView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            dateAndRepeatView.heightAnchor.constraint(equalToConstant: 90)
        ])
        // repsOrTimerLabel constraints
        NSLayoutConstraint.activate([
            repsOrTimerLabel.topAnchor.constraint(equalTo: dateAndRepeatView.bottomAnchor, constant: 20),
            repsOrTimerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        ])
        // repsOrTimerView constraints
        NSLayoutConstraint.activate([
            repsOrTimerView.topAnchor.constraint(equalTo: repsOrTimerLabel.bottomAnchor, constant: 5),
            repsOrTimerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            repsOrTimerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            repsOrTimerView.heightAnchor.constraint(equalToConstant: view.frame.height / 2.5)
        ])
    }
}
