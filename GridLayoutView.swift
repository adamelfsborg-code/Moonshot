//
//  GridLayoutView.swift
//  Moonshot
//
//  Created by Adam Elfsborg on 2024-07-21.
//

import SwiftUI

struct GridLayoutView: View {
    let columns = [ GridItem(.adaptive(minimum: 150)) ]
    let missions: [Mission]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission)
                } label: {
                    VStack {
                        Image(mission.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding()
                        
                        VStack {
                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundStyle(.white)
                            Text(mission.formattedLanchDate)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(.lightBackground)
                    }
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
    return GridLayoutView(missions: missions)
}
