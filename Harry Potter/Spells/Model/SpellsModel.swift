//
//  SpellsModel.swift
//  Harry Potter
//
//  Created by Jayluu's Mac on 08/08/26.
//

import Foundation

struct Spells: Codable, Identifiable {
    var id: Int {index + 1}
    let spell, use: String
    let index: Int
}
