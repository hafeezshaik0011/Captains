//
//  Shop.swift
//  Captains
//
//  Created by hafeez Sheik on 27/08/25.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: ProductModel? //= nil
}
