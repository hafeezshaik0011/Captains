//
//  ProductDetails.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import SwiftUI

struct ProductDetails: View {
    
    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            //MARK: navigation Bar
            HStack{
                Button {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }label: {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                
                
                Spacer()
                Button {
                }label: {
                    Image(systemName: "cart")
                        .font(.title2)
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            
            //            MARK: TITLE
            VStack(alignment: .leading,spacing: 6) {
                Text("Protective Gear")
                    .font(.title)
               
                Text( shop.selectedProduct?.name ?? "")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
            }
            .foregroundColor(.white)
            .padding()
            
            
            TopView()
                .zIndex(1)
            
            
            VStack(alignment: .center, spacing: 0){
                
                RatingsSizesDetailView()
                    .padding(.top, -50)
                    .padding(.bottom, 10)
                
                
                ScrollView(.vertical,showsIndicators: false){
                    Text(shop.selectedProduct?.description ?? "")
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                DetailsBottomView()
                
                Button(action: {
                    
                }, label: {
                    Spacer()
                    Text("Add to cart".uppercased())
                        .font(.system(.title2, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                }) //: BUTTON
                .padding(15)
                .background(
                    Color(red:  shop.selectedProduct?.red ?? 0.0,
                                  green:  shop.selectedProduct?.green ?? 0.0,
                                  blue:  shop.selectedProduct?.blue ?? 0.0)
                )
                .clipShape(Capsule())
                
                .padding()
                
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
            
        }
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red:  shop.selectedProduct?.red ?? 0.0,
                          green:  shop.selectedProduct?.green ?? 0.0,
                          blue:  shop.selectedProduct?.blue ?? 0.0))
    }
}


struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

#Preview {
    ProductDetails()
}
