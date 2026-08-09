//
//  Harry_PotterApp.swift
//  Harry Potter
//
//  Created by Jayluu's Mac on 08/08/26.
//

import SwiftUI

@main
struct Harry_PotterApp: App {
    @State var booksVM: testAPI = testAPI()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(booksVM)
        }
    }
}
