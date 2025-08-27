//
//  DetailsBottomView.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import SwiftUI

struct DetailsBottomView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        
        HStack{
            Button{
                if counter > 0{
                    counter = counter - 1
                }
            }label: {
                Image(systemName:"minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button{
                counter = counter + 1
            }label: {
                Image(systemName:"plus.circle")
            }
            
            Spacer()
            
            Button{
            }label: {
                Image(systemName:"heart.circle")
                    .foregroundColor(.pink)
            }
        }
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
        .padding(.vertical, 10)

        
        
    }
}

#Preview {
    DetailsBottomView()
}
