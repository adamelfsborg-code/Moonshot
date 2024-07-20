//
//  ContentView.swift
//  Moonshot
//
//  Created by Adam Elfsborg on 2024-07-20.
//

import SwiftUI

struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80))
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(1..<1000) {
                    Text("Col \($0)")
                }
            }
        }
   }
}

#Preview {
    ContentView()
}
