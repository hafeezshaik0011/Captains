//
//  HomepageView.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import SwiftUI

struct HomepageView: View {
    
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    }
    
    var body: some View {
        ZStack{
            VStack{
                HomepageNavigationView()
                    .padding(.horizontal,15)
                    .padding(.top,40)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                
                ScrollView(.vertical, showsIndicators : false,content: {
                    VStack{
                        Caurosel()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 20)
                    }
                    
                    
                    CategoryView()
                    
                    HeadingsView(title: "Captains")
                    
                    LazyVGrid(columns: gridLayout,spacing: 15) {
                        ForEach(product){ prod in
                            ProdcutsItems(item: prod)
                        }
                    }
                    .padding(15)
                    
                    HeadingsView(title: "Brands")
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        LazyHGrid(rows: gridLayout,spacing: columnSpacing) {
                            ForEach(brand){ brand in
                                BrandItemView(brand: brand)
                            }
                            
                        }
                        .frame(height: 200)
                        .padding(15)
                    }
                    
                    VStack(spacing: 12) {
                        Text("we offer the most cutting edge comfortable,lightweight and stylish fooball helments in the market at affortable prices.")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundStyle(Color.gray)
                            .multilineTextAlignment(.center)
                        
                        Image("logo-lineal")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75)
                        
                        Text("Copyright @Hafeezsheikh \n all right reserved")
                            .font(.headline)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                    }
                })
            }
            .background(Color("ColorBackground"))
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    HomepageView()
}
