//
//  DividerView.swift
//  Moonshot
//
//  Created by Adam Elfsborg on 2024-07-21.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    DividerView()
}
