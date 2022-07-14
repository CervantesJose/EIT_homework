//
//  Int.swift
//  pokedex2
//
//  Created by Consultant on 6/23/22.
//

import Foundation

extension Int {
    var meter: String { String(format: "%.1f m", Double(self) / 10.0) }
    var kilo: String { String(format: "%.1f kg", Double(self) / 10.0) }
}
