//
//  UserDetail_VC.swift
//  RandomUser
//
//  Created by Consultant on 6/30/22.
//

import UIKit
import MapKit

class VC_UserDetail: UIViewController {
    var user : User?
    
    @IBOutlet var profileImageV: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    
    @IBOutlet var locationMapV: MKMapView!
    
    @IBOutlet var mailLabel: UILabel!
    @IBOutlet var phoneNoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user!.name.first.uppercased()) \(user!.name.last.uppercased())"
        
        // Thumbnail image
        ImageManager.shared.requestImage(url: user!.profilePic.original) { (image) in
            self.profileImageV.image = image
        }
        
        profileImageV.layer.cornerRadius = self.profileImageV.frame.width / 2.0
        profileImageV.layer.masksToBounds = true
        
        // fetch data
        nameLabel.text = self.title
        locationLabel.text = "\(user!.location.city), \(user!.location.state)"
        
        mailLabel.text = user!.email
        phoneNoLabel.text = user!.phoneNo
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Show pin on map
        let homeLoc = MKPointAnnotation()
        homeLoc.coordinate = CLLocationCoordinate2DMake(user!.location.coordinates.lat, user!.location.coordinates.lon)
        homeLoc.title = "Home"
        locationMapV.setCenter(homeLoc.coordinate, animated: true)
        locationMapV.showAnnotations([homeLoc,], animated: true)
    }
}
