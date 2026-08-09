//
//  ContentView.swift
//  Harry Potter
//
//  Created by Jayluu's Mac on 08/08/26.
//

import SwiftUI

struct ContentView: View {
    @Environment(testAPI.self) var testVM
    
    var body: some View {
        VStack(alignment: .leading) {
            Menu {
                Button("English") {testVM.languageSelected = .en}
                Button("Spanish") {testVM.languageSelected = .es}
                Button("French") {testVM.languageSelected = .fr}
                Button("Italian") {testVM.languageSelected = .it}
                Button("Portuguese") {testVM.languageSelected = .pt}
                Button("Ukranian") {testVM.languageSelected = .uk}
            } label: {
                Text("\(testVM.languageSelected.displayName)")
            }
            ScrollView {
                ForEach(testVM.books) { book in
                    Text("\(book.number)")
                    Text("\(book.pages)")
                    Text("\(book.index)")
                    Text("\(book.title)")
                    Text("\(book.originalTitle)")
                    Text("\(book.releaseDate)")
                    Text("\(book.description)")
                    AsyncImage(url: URL(string: "\(book.cover)")) { image in
                        image.resizable().scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                }
            }
        }
        .task {
            await testVM.loadBooks()
        }
    }
}

#Preview {
    ContentView()
}
