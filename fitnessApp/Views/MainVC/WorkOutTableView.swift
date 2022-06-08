//
//  WorkOutView.swift
//  fitnessApp
//
//  Created by Илья Шаповалов on 08.06.2022.
//

import UIKit

class WorkOutTableView: UIView {
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.backgroundView = UIImageView(image: UIImage(named: "backgroundImage"))
        table.backgroundColor = .none
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    private let cellIdentifier = "workoutCell"
    let array = ["cell1", "cell2", "cell3"]
    
    //MARK: - init()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setDelegates()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        
        addSubview(tableView)
        tableView.register(WorkoutTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
//MARK: - UITableViewDataSource
extension WorkOutTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! WorkoutTableViewCell
        //cell.textLabel?.text = array[indexPath.row]
        cell.layer.cornerRadius = 15
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        frame.height / 5
    }
}

extension WorkOutTableView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell tapped!")
    }
}
