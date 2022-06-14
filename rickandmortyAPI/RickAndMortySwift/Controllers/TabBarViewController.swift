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
        vc.tabBarItem = UITabBarItem(title: "Characters", image: UIImage.init(systemName: "person.2"), tag: 1)
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
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        if item == tabBar.items?[0] {
            title = "Characters"
            navigationController?.title = "Characters"
        }
        
        else if item == tabBar.items?[1] {
            title = "Episodes"
            navigationController?.title = "Episodes"
        }
        
        else if item == tabBar.items?[2] {
            navigationController?.title = "Locations"
            title = "Locations"
        }
    }

}
