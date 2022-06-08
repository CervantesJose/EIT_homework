//
//  ViewController.swift
//  homework4.1
//
//  Created by Consultant on 6/8/22.
//

import UIKit

class ViewController: UIViewController, UpdateLabelTextDelegate {
    func updateLabelText(withText text: String) {
        inputText.text = text
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onButtonTap(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "mainViewController1") as! ViewControllerA
                vc.passText = "Hello World"
        vc.delegate = self
                present(vc, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let segueDestination = segue.destination as! ViewControllerA
            segueDestination.passTextSegue = "Hello World"
        segueDestination.delegate = self
        }

    @IBOutlet weak var inputText: UILabel!
}
