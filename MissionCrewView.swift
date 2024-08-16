//
//  MissionCrewView.swift
//  Moonshot
//
//  Created by Adam Elfsborg on 2024-07-21.
//

import SwiftUI

struct MissionCrewView: View {
    let crew: [CrewMember]
    
    let mission: Mission
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) {member in
                    NavigationLink(value: member) {
                        Image(member.astronaut.id)
                            .resizable()
                            .frame(width: 104, height: 72)
                            .clipShape(.capsule)
                            .overlay(
                                Capsule()
                                    .strokeBorder(.white, lineWidth: 1)
                            )
                            .accessibilityRemoveTraits(.isImage)
                            .accessibilityLabel("Image of \(member.astronaut.name)")
                        
                        VStack(alignment: .leading) {
                            Text(member.astronaut.name)
                                .foregroundStyle(.white)
                                .font(.headline)
                                .accessibilityHidden(true)
                            
                            Text(member.role)
                                .foregroundStyle(.gray)
                        }
                    }
                    .navigationDestination(for: CrewMember.self) {
                        AstronautView(astronaut: $0.astronaut)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
    
    
    init(mission: Mission) {
        self.mission = mission
        
        let astronauts: [String:Astronaut] = Bundle.main.decode("astronauts.json")
        self.crew = self.mission.crew.map { member in
            if let astronaut = astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaut)
            }
            
            fatalError("Failed to look up astronaut \(member.name)")
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    return MissionCrewView(mission: missions[0]).preferredColorScheme(.dark)
}
