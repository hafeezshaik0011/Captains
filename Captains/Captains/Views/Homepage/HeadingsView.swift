//
//  HeadingsView.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import SwiftUI

struct HeadingsView: View {
    
    var title : String
    
    var body: some View {
        HStack{
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical)
    }
}

#Preview {
    HeadingsView(title: "Hi Hafeez")
}
