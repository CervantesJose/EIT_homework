//
//  ViewControllerA.swift
//  homework4.1
//
//  Created by Consultant on 6/8/22.
//

import UIKit

protocol UpdateLabelTextDelegate {
    func updateLabelText(withText text: String)
}

class ViewControllerA: UIViewController {
    
    var delegate: UpdateLabelTextDelegate?
    
    var passText: String?
    var passTextSegue: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = passText
        
        myLabel.text = passTextSegue
        
    }
    
    @IBAction func sendToReceiver(_ sender: Any) {
        delegate?.updateLabelText(withText: updateText.text ?? "")
                dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    @IBOutlet weak var updateText: UITextView!
    
}
