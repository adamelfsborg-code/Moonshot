//
//  ListLayoutView.swift
//  Moonshot
//
//  Created by Adam Elfsborg on 2024-07-21.
//

import SwiftUI

struct ListLayoutView: View {
    let missions: [Mission]
    
    var body: some View {
        LazyVStack {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission)
                } label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundStyle(.white)
                            Text(mission.formattedLanchDate)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        .padding()
                        
                        Spacer()
                        
                        Image(mission.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding()
                        
                    }
                    .background(.lightBackground)
                    .clipShape(.rect(cornerRadius: 10))
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.lightBackground)
                    }
                }
            }
        }
        .padding([.horizontal, .bottom])
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    return ListLayoutView(missions: missions).preferredColorScheme(.dark)
}
