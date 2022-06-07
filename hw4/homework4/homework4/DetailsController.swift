//
//  DetailsController.swift
//  homework4
//
//  Created by Consultant on 6/7/22.
//

import UIKit

class DetailsController: UIViewController {
    var grocery: String = ""
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var DetailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: grocery)
        DetailLabel.text = grocery
        // Do any additional setup after loading the view.
    }
}
