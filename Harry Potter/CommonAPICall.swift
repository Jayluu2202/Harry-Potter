//
//  CommonAPICall.swift
//  Harry Potter
//
//  Created by Jayluu's Mac on 08/08/26.
//

import Foundation
import SwiftUI

@Observable
class testAPI {
    var books: [Books] = []
    var isLoading: Bool = false
    var errorMessage : String?
    var languageSelected : API.LangEndpoint = .en
    func loadBooks() async {
        isLoading = true
        errorMessage = nil
        guard let url = API.finalURL(language: languageSelected, endpoint: .books) else {
            errorMessage = "Invalid URL"
            isLoading = false
            return
        }
        do {
            books = try await fetchBooks(url: url)
        } catch {
            errorMessage = error.localizedDescription
        }
        isLoading = false
    }
    
    func fetchBooks(url: URL) async throws -> [Books]{
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            errorMessage = "Error code:"
            throw URLError(.badServerResponse)
        }
        return try JSONDecoder().decode([Books].self, from: data)
    }
}
