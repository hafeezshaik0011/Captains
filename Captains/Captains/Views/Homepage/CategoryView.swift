//
//  CategoryView.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing,pinnedViews: []) {
                
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(category_data) { category in
                        CategoryItemView(category: category)
                    }
                }
            }
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}


struct SectionView: View {
  // MARK: - PROPERTY
  
  @State var rotateClockwise: Bool
  
  // MARK: - BODY
  
  var body: some View {
    VStack(spacing: 0) {
      Spacer()
      
      Text("Categories".uppercased())
        .font(.footnote)
        .fontWeight(.bold)
        .foregroundColor(.white)
        .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
      
      Spacer()
    } //: VSTACK
    .background(colorGray.cornerRadius(12))
    .frame(width: 85)
  }
}



struct CategoryItemView: View {
  // MARK: - PROPERTY
  
  let category: CategoryModel
  
  // MARK: - BODY
  
  var body: some View {
    Button(action: {}, label: {
      HStack(alignment: .center, spacing: 6) {
        Image(category.image)
          .renderingMode(.template)
          .resizable()
          .scaledToFit()
          .frame(width: 30, height: 30, alignment: .center)
          .foregroundColor(.gray)
        
        Text(category.name.uppercased())
          .fontWeight(.light)
          .foregroundColor(.gray)
        
        Spacer()
      } //: HSTACK
      .padding()
      .background(
        RoundedRectangle(cornerRadius: 12)
          .stroke(Color.gray, lineWidth: 1)
      )
    }) //: BUTTON
  }
}

#Preview {
    CategoryView()
}

