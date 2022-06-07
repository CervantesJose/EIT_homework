//
//  ViewController.swift
//  homework4
//
//  Created by Consultant on 6/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    let myTVC = TableViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTouchButton(_ sender: Any) {
        myTVC.grocerylist = ["apples", "papaya", "avacadoes", "carrots"]
        navigationController?.pushViewController(myTVC, animated: true)
    }


}

