//
//  Beer.swift
//  beercalc
//
//  Created by Jonatas Brisotti on 23/11/22.
//

import Combine

class Beer: ObservableObject {
    @Published var brand: String
    @Published var price: String
    @Published var size: String
    
    init(
        brand: String = "Brand",
        price: String = "$0.00",
        size: String = "in mL"
    ) {
        self.brand = brand
        self.price = price
        self.size = size
    }
    
}
