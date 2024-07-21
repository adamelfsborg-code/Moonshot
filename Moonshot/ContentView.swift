//
//  ContentView.swift
//  Moonshot
//
//  Created by Adam Elfsborg on 2024-07-20.
//

import SwiftUI

struct ContentView: View {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var showingGridLayout = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Group {
                    if (showingGridLayout) {
                        GridLayoutView(missions: missions)
                    } else {
                        ListLayoutView(missions: missions)
                    }
                }
                .animation(.easeIn, value: showingGridLayout)
            }
            .preferredColorScheme(.dark)
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .toolbar {
                Toggle(isOn: $showingGridLayout) {
                    Text("Grid View")
                }
                .animation(.bouncy, value: showingGridLayout)
            }
        }
    }
}

#Preview {
    ContentView()
}
