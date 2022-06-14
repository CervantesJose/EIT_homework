//
//  TabBarViewController.swift
//  RickAndMortySwift
//
//  Created by Consultant on 6/14/22.
//

import UIKit

class TabBarViewController: UITabBarController{
    
    lazy var charactersVC: CharacterViewController = {
        let vc = CharacterViewController()
        vc.tabBarItem = UITabBarItem(title: "Characters", image: UIImage.init(systemName: "person"), tag: 1)
        vc.tabBarItem.selectedImage?.withTintColor(UIColor.blue)
        vc.title = "Characters"
        return vc
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.viewControllers = [charactersVC]
    }

}
