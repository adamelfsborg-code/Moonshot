//
//  ContentView.swift
//  Moonshot
//
//  Created by Adam Elfsborg on 2024-07-20.
//

import SwiftUI

struct CustomTextView: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(text: String) {
        print("CUstom new custom text: \(text)")
        self.text = text
    }
}

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomTextView(text: "Row \($0)")
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ContentView()
}
