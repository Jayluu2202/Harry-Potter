//
//  HousesModel.swift
//  Harry Potter
//
//  Created by Jayluu's Mac on 08/08/26.
//

import Foundation

struct Houses : Codable, Identifiable {
    var id: Int {index + 1}
    let house, emoji, founder, animal: String
    let colors: [String]
    let index: Int
}
