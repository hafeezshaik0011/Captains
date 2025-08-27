//
//  HomepageNavigationView.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import SwiftUI

struct HomepageNavigationView: View {
    
    var body: some View {
        HStack{
            Button(action: {
                // Action for menu button
            }) {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(width: 24, height: 24)
                
            }
            
            Spacer()
            
            HStack(spacing : 4){
                Text("TOUCH")
                    .font(.title3)
                    .fontWeight(.black)
                    .foregroundColor(.black)
                
                Image("logo-dark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30,height: 30,alignment: .center)
                
                
                Text("DOWN")
                    .font(.title3)
                    .fontWeight(.black)
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            Button(action: {
                // Action for menu button
            }) {
                ZStack{
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                        .frame(width: 24, height: 24)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14,height: 14)
                        .offset(x: 13, y: -10)
                    
                }
            }
        }
      
        .padding()
      
    }
}

#Preview {
    HomepageNavigationView()
}
