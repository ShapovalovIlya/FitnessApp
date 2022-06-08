//
//  WorkoutTableViewCell.swift
//  fitnessApp
//
//  Created by Илья Шаповалов on 08.06.2022.
//

import UIKit

class WorkoutTableViewCell: UITableViewCell {
    
    private let cellIdentifier = "workoutCell"
    
    private let workoutImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person.crop.circle")
        image.tintColor = .specialGray
        image.backgroundColor = .specialBackGround
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let workoutLabel: UILabel = {
       let label = UILabel()
        label.text = "Squads"
        label.font = .robotoBold20()
        label.textColor = .specialGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let repsLabel: UILabel = {
        let label = UILabel()
        label.text = "Reps: 10"
        label.textColor = .specialGray
        label.font = .robotoMedium12()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let setsLabel: UILabel = {
        let label = UILabel()
        label.text = "Sets: 10"
        label.textColor = .specialGray
        label.font = .robotoMedium12()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var workoutButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .specialYellow
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addShadowOnView()
        return button
    }()
    
    
    //MARK: - init()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .specialBrown
        
        addSubview(workoutImage)
        addSubview(workoutLabel)
        addSubview(repsLabel)
        addSubview(setsLabel)
        addSubview(workoutButton)
    }
    
    private func setConstrains() {
        //workoutImage constrains
        NSLayoutConstraint.activate([
            workoutImage.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            workoutImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            workoutImage.widthAnchor.constraint(equalToConstant: 65),
            workoutImage.heightAnchor.constraint(equalToConstant: 65)
        ])
        //workoutLabel constrains
        NSLayoutConstraint.activate([
            workoutLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            workoutLabel.leadingAnchor.constraint(equalTo: workoutImage.trailingAnchor, constant: 10),
            workoutLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        //repsLabel constrains
        NSLayoutConstraint.activate([
            repsLabel.topAnchor.constraint(equalTo: workoutLabel.bottomAnchor),
            repsLabel.leadingAnchor.constraint(equalTo: workoutImage.trailingAnchor, constant: 10),
            repsLabel.heightAnchor.constraint(equalToConstant: 20),
            repsLabel.widthAnchor.constraint(equalToConstant: 50)
        ])
        //setsLabel constrains
        NSLayoutConstraint.activate([
            setsLabel.topAnchor.constraint(equalTo: workoutLabel.bottomAnchor),
            setsLabel.leadingAnchor.constraint(equalTo: repsLabel.trailingAnchor, constant: 10),
            setsLabel.heightAnchor.constraint(equalToConstant: 20),
            setsLabel.widthAnchor.constraint(equalToConstant: 50)
        ])
        //workoutButton constrains
        NSLayoutConstraint.activate([
            workoutButton.topAnchor.constraint(equalTo: repsLabel.bottomAnchor),
            workoutButton.leadingAnchor.constraint(equalTo: workoutImage.trailingAnchor, constant: 10),
            workoutButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            workoutButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
}
