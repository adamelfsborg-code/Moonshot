//
//  Mission.swift
//  Moonshot
//
//  Created by Adam Elfsborg on 2024-07-20.
//

import Foundation

struct Mission: Codable, Identifiable, Hashable {

    struct CrewRole: Codable, Hashable {
        let name: String
        let role: String
    }

    let id: Int
    let crew: [CrewRole]
    let description: String
    let launchDate: Date?
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var imageName: String  {
        "apollo\(id)"
    }
    
    var formattedLanchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
