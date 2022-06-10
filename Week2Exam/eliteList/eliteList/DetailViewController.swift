//
//  DetailViewController.swift
//  eliteList
//
//  Created by Consultant on 6/9/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    var artist: Artist?
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var detail: UILabel!
    
    var image = UIImageView?.self
    var name: String = ""
    var details: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = artist?.title
        img.image = artist?.image
        detail.text = artist?.details
        
        img.center = view.center
        view.addSubview(img)
        view.sendSubviewToBack(img)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        label.text = artist?.title
        detail.text = artist?.details
    }
    
}
