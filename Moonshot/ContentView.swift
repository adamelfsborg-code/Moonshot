//
//  ContentView.swift
//  Moonshot
//
//  Created by Adam Elfsborg on 2024-07-20.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct ContentView: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Jordan B Petersson",
                "address": {
                    "street": "543, Toronto highway",
                    "city": "Toronto"
                }
            }
            """
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }
        }
   }
}

#Preview {
    ContentView()
}
