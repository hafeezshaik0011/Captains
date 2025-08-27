//
//  RatingsSizesDetailView.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]

    
    var body: some View {
        HStack(alignment: .center, spacing: 5){
            VStack(alignment: .leading){
                Text("Ratings")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3){
                    ForEach(1...5,id : \.self){ item in
                        Image(systemName: "star.fill")
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(colorGray.cornerRadius(5))
                            .foregroundColor(.white)
                    }
                }
            }
            
            
            Spacer()
            
            
            VStack(alignment: .trailing){
                Text("Sizes")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3){
                    ForEach(sizes,id : \.self){ size in
                       Text(size)
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundStyle(colorGray)
                            .frame(width: 28,height: 28)
                            .background(Color.white.cornerRadius(5))
                            .background(RoundedRectangle(cornerRadius: 5)
                                .stroke(colorGray, lineWidth: 2))
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    RatingsSizesDetailView()
}
