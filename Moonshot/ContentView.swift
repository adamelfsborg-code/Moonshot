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
            List(1..<100) {row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            .navigationTitle("Nooice")
        }
   }
}

#Preview {
    ContentView()
}
