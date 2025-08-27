//
//  Constants.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import Foundation
import SwiftUI

//MARK: Data
let brand : [BrandModel] = Bundle.main.decode("brand.json")
let category_data : [CategoryModel] = Bundle.main.decode("category.json")
let player : [PlayerModel] = Bundle.main.decode("player.json")
let product : [ProductModel] = Bundle.main.decode("product.json")



//MARK: LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
  return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}



let colorGray: Color = Color(UIColor.systemGray4)
