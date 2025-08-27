//
//  BrandItemView.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import SwiftUI

struct BrandItemView: View {
    
    var brand : BrandModel
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 2)
            )
    }
}

#Preview {
    BrandItemView(brand: brand[0])
}
