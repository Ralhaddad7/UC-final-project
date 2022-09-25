//
//  cartManager.swift
//  project.ritaj
//
//  Created by Ritaj Alhaddad on 25/09/2022.
//

import Foundation

class cartManager: ObservableObject{
    @Published private(set) var products: [product]=[]
    @Published private(set) var total : Int = 0
    
    func addToCart(product: product) {
        products.append(product)
        total += product.price
    }
    func removeFromCart (product: product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}
