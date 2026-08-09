//
//  BooksModel.swift
//  Harry Potter
//
//  Created by Jayluu's Mac on 08/08/26.
//

import Foundation

struct Books: Identifiable, Codable {
    var id: Int { number }
    var number, pages, index: Int
    var title, originalTitle, releaseDate, description, cover: String
}
