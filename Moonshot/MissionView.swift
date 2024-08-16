//
//  MissionView.swift
//  Moonshot
//
//  Created by Adam Elfsborg on 2024-07-20.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    
    var body: some View {
        ScrollView {
            VStack {
                Image(mission.imageName)
                    .resizable()
                    .scaledToFit()
                    .containerRelativeFrame(.horizontal) { width, axis in
                        width * 0.6
                    }
                    .accessibilityHidden(true)
                
                Text(mission.formattedLanchDate)
                    .font(.headline.bold())
                    .foregroundStyle(.gray)

                VStack(alignment: .leading) {
                   
                    DividerView()
                    
                    Text("Mission Highlights")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                    
                    Text(mission.description)
                   
                    DividerView()
                    
                    Text("Crew")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                        .accessibilityHidden(true)
                    
                }.padding(.horizontal)
                
                MissionCrewView(mission: mission)
                
            }
            .padding(.bottom)
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
    
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    return MissionView(mission: missions[1]).preferredColorScheme(.dark)
}
