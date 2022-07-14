//
//  UserProperties.swift
//  RandomUser
//
//  Created by Consultant on 6/30/22.
//
import Foundation

// Name
struct Name {
    let first : String
    let last  : String
    let title : String
    
    init(dict : StrDict) {
        first = dict["first"] ?? ""
        last  = dict["last"]  ?? ""
        title = dict["title"] ?? ""
    }
}

// Coordinates
struct Coordinates {
    let lat : Double
    let lon : Double
    
    init(dict : StrDict) {
        lat = Double(dict["latitude"] ?? "0.0")!
        lon = Double(dict["longitude"] ?? "0.0")!
    }
}

// Address, Coordinates and timezone
struct Location {
    let street : String
    let city : String
    let state : String
    let postcode : String
    
    let coordinates : Coordinates
    
    init(dict : JsonObj) {
        street = dict["street"] as? String ?? ""
        city =   dict["city"] as? String   ?? ""
        state =  dict["state"] as? String  ?? ""
        
        postcode = dict["postcode"] as? String ?? ""
        
        coordinates = Coordinates(dict: dict["coordinates"] as! StrDict)
    }
}

// Profile
struct ProfilePicture {
    let original : URL
    let thumbnail : URL
    
    init(dict : StrDict) {
        original = URL(string: dict["large"] ?? "")!
        thumbnail = URL(string: dict["thumbnail"] ?? "")!
    }
}
