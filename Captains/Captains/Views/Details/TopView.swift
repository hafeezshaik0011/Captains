//
//  TopView.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import SwiftUI

struct TopView: View {
    
    @EnvironmentObject var shop: Shop

    @State private var isAnimating: Bool = false
    
    
    
    var body: some View {
        HStack(){
            VStack(alignment: .leading,spacing: 5){
                Text("price")
                    .fontWeight(.semibold)
                
                
                Text(shop.selectedProduct?.formattedPrice ?? "")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? "")
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }
        .padding()
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

#Preview {
    TopView()
}
