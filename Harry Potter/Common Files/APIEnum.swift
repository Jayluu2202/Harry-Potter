//
//  APIEnum.swift
//  Harry Potter
//
//  Created by Jayluu's Mac on 08/08/26.
//

import Foundation

enum API {
    static let baseURL = "https://potterapi-fedeperin.vercel.app"
    
    enum LangEndpoint: String {
        case en = "/en"
        case es = "/es"
        case fr = "/fr"
        case it = "/it"
        case pt = "/pt"
        case uk = "/uk"
        
        var displayName: String {
            switch self {
            case .en : return "English"
            case .es : return "Spanish"
            case .fr : return "French"
            case .it : return "Italian"
            case .pt : return "Portuguese"
            case .uk : return "Ukranian"
            }
        }
    }
    
    enum Endpoint: String {
        case books = "/books"
        case spells = "/spells"
        case characters = "/characters"
        case houses = "/houses"
    }
    
    static func finalURL(language: LangEndpoint,endpoint: Endpoint) -> URL? {
        URL(string: API.baseURL + language.rawValue + endpoint.rawValue)
    }
}
