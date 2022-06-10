//
//  ArtistCell.swift
//  eliteList
//
//  Created by Consultant on 6/9/22.
//

import UIKit

class ArtistCell: UITableViewCell {
    
    @IBOutlet weak var artistImageView: UIImageView!
    @IBOutlet weak var artistTitleLabel: UILabel!
    
    func setArtist(artist: Artist) {
        artistImageView.image = artist.image
        artistTitleLabel.text = artist.title
        
    }
}
