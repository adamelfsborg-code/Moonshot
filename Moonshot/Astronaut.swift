//
//  Astronaut.swift
//  Moonshot
//
//  Created by Adam Elfsborg on 2024-07-20.
//

import Foundation

struct Astronaut: Codable, Identifiable, Hashable {
    let id: String
    let name: String
    let description: String
}
