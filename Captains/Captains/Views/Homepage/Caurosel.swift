//
//  Caurosel.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import SwiftUI

struct Caurosel: View {
    var body: some View {
        TabView {
            ForEach(player) { player in
                Image(player.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .padding(.top,10)
                    .padding(.horizontal,15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    Caurosel()
}
