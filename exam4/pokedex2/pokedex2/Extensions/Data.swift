//
//  Data.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import Foundation

extension Data {
    var prettyJSON: String? {
        guard let object = try? JSONSerialization.jsonObject(with: self, options: []),
              let data = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted])
        else { return nil }
        
        return String(data: data, encoding: .utf8)
    }
}
