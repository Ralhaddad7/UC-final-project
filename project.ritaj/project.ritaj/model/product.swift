//
//  product.swift
//  project.ritaj
//
//  Created by Ritaj Alhaddad on 25/09/2022.
//

import Foundation


struct product : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var price : Int
}

var productList = [product( name: "white t-shirt", image: "1", price: 30),
                   product( name: "gray t-shirt", image: "2", price: 40),
                   product( name: "orange sweater", image: "3", price: 35),
                   product( name: "gray sweater", image: "5", price: 45),
                   product( name: "pink dress", image: "6", price: 22),
                   product( name: "red sweater", image: "7", price: 90),
                   product( name: "green blazer", image: "8", price: 17),
                   product( name: "pink top", image: "4", price: 66),
                   product( name: "brown top", image: "10", price: 70),
                   product( name: "dark blue dress", image: "11", price: 44),
                   product( name: "white and black dress", image: "12", price: 83),
                   product( name: "pink with small flower dress", image: "9", price: 26)]
