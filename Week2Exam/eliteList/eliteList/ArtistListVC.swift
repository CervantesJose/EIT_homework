//
//  ArtistListVC.swift
//  eliteList
//
//  Created by Consultant on 6/9/22.
//

import UIKit

class ArtistListVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var artists: [Artist] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        artists = artistArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func artistArray() -> [Artist] {
        
        var tempArtists: [Artist] = []
        
        let mac = Artist(image: UIImage(named: "mac_miller.jpeg")!, title: "Mac Miller", details: "Mac Miller, my favorite")
        let kdot = Artist(image: UIImage(named: "k_dot.jpeg")!, title: "Kendrick Lamar", details: "Kendrick Lamar, highly regarded as one of the best hip-hop artists of his generation.")
        let eminem = Artist(image: UIImage(named: "eminem.jpeg")!, title: "Eminem", details: "Arguably one of the best lyricists of all time")
        let jid = Artist(image: UIImage(named: "jid.jpeg")!, title: "J.I.D.", details: "Discovered by J. Cole but showing more versatility")
        let cordae = Artist(image: UIImage(named: "cordae.jpeg")!, title: "Cordae", details: "Self anointed leader of the rap renaissance")
        let hov = Artist(image: UIImage(named: "hov.jpeg")!, title: "Jay-Z", details: "First african-american billionair")
        let jcole = Artist(image: UIImage(named: "jcole.jpeg")!, title: "J. Cole", details: "Jermaine? Cole? Great artist who actually speaks to his listeners")
        let kanye = Artist(image: UIImage(named: "kanye.jpeg")!, title: "Kanye West", details: "Undoubtebly influenced an entire generation")
        let skrillex = Artist(image: UIImage(named: "skrillex.jpeg")!, title: "Skrillex", details: "Helped push electronic dance music (EDM) to the mainstream listeners")
        let hopsin = Artist(image: UIImage(named: "hopsin.jpeg")!, title: "Hopsin", details: "First rapper who made me listen to lyrics carefully")
        
        tempArtists.append(mac)
        tempArtists.append(kdot)
        tempArtists.append(eminem)
        tempArtists.append(jid)
        tempArtists.append(cordae)
        tempArtists.append(hov)
        tempArtists.append(jcole)
        tempArtists.append(kanye)
        tempArtists.append(skrillex)
        tempArtists.append(hopsin)
        
        
        return tempArtists
        
    }
    
}

extension ArtistListVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let artist = artists[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArtistCell") as! ArtistCell
        
        cell.setArtist(artist: artist)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
       
}
