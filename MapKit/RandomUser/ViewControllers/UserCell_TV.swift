//
//  UserCell_TV.swift
//  RandomUser
//
//  Created by Consultant on 6/30/22.
//

import UIKit

class TV_UserCell: UITableViewCell {

    @IBOutlet var profileImageV: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setData(user : User) {
        
        // Reset Profile picture (Prevent showing up prev profile image when loading)
        self.profileImageV.image = UIImage(named: "img_user_profile_blank")
        
        // Make profile picture circle
        self.profileImageV.layer.cornerRadius = self.profileImageV.frame.width / 2.0
        self.profileImageV.layer.masksToBounds = true
        
        // Set text data
        self.nameLabel.text = "\(user.name.first.uppercased()) \(user.name.last.uppercased())"
        
        // And set image
        ImageManager.shared.requestImage(url: user.profilePic.thumbnail) { (image) in
            self.profileImageV.image = image
        }
    }
}
