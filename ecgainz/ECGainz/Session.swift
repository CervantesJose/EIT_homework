//
//  Exercises.swift
//  ecGains
//
//  Created by Consultant on 7/11/22.
//

import UIKit

class Session: UITableViewController {
    
    var exercises = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Sessions"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }

}

