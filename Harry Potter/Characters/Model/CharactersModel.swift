//
//  CharactersModel.swift
//  Harry Potter
//
//  Created by Jayluu's Mac on 08/08/26.
//

import Foundation

struct Characters : Codable, Identifiable {
    var id: Int { index + 1 }
    let index: Int
    let fullName, nickname, hogwartsHouse, interpretedBy, image, birthdate: String
    let children: [String]
}
