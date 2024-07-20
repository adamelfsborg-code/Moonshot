//
//  ContentView.swift
//  Moonshot
//
//  Created by Adam Elfsborg on 2024-07-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                Text("Detail view")
            } label: {
                VStack {
                    Text("Tap this")
                    Image(systemName: "face.smiling")
                }
            }
            .navigationTitle("Nooice")
        }
   }
}

#Preview {
    ContentView()
}
