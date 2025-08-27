//
//  ProdcutsItems.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import SwiftUI

struct ProdcutsItems: View {
    
    var item : ProductModel
    
    var body: some View {
        VStack(alignment: .leading){
            ZStack{
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background{
                Color(red: item.red, green: item.green, blue: item.blue)
            }
            .cornerRadius(12)
            
            Text(item.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Text(item.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(Color.gray)
            
        }
    }
}

#Preview {
    ProdcutsItems(item: product[0])
}
