//
//  CartView.swift
//  project.ritaj
//
//  Created by Ritaj Alhaddad on 25/09/2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager : cartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count  > 0 {
                ForEach(cartManager.products, id:\.id) {
                    product in
                    ProductRew(product: product)
                }
                HStack{
                    Text("your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                
            } else {
                Text("your cart is empty!")

            }
        }.navigationTitle(Text("my cart"))
            .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(cartManager())
    }
}
