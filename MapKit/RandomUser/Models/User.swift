//
//  User.swift
//  RandomUser
//
//  Created by Consultant on 6/30/22.
//
import Foundation

// User Object
struct User {
    let name : Name

    let location : Location
    let email : String // to do
    let phoneNo : String
    let cellNo : String
    
    let profilePic : ProfilePicture
    
    init(dict : JsonObj) {
        name = Name(dict: dict["name"] as! StrDict)
        location = Location(dict: dict["location"] as! JsonObj)
        
        email = dict["email"] as? String ?? ""
        
        phoneNo = dict["phone"] as? String ?? ""
        cellNo = dict["cell"] as? String ?? ""
        
        profilePic = ProfilePicture(dict: dict["picture"] as! StrDict)
    }
}
