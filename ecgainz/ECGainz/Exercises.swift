//
//  Exercises.swift
//  ecGains
//
//  Created by Consultant on 7/11/22.
//

import UIKit

class Exercises: UITableViewController {
    
    var exercises = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Exercises"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        exercises.append("Barbell Bench Press")
        exercises.append("Dumbell Bench Press")
        exercises.append("Barbell Back Squat")
        exercises.append("Barbell Front Squat")
        exercises.append("Conventional Deadlift")
        exercises.append("Sumo Deadlift")
        exercises.append("Barbell Overhead Press")
        
        exercises.sort()
        print(exercises)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Exercise", for: indexPath)
        
        cell.textLabel?.text = "\(indexPath.row)"
        
        return cell
    }

}
