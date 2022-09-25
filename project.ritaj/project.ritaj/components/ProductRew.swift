//
//  ProductRew.swift
//  project.ritaj
//
//  Created by Ritaj Alhaddad on 25/09/2022.
//

import SwiftUI

struct ProductRew: View {
    @EnvironmentObject var cartManager : cartManager
    var product : product
    var body: some View {
        HStack(spacing:20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10){
                Text(product.name)
                    .bold()
                
                Text("$\(product.price)")
            }
           Spacer()
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame( maxWidth: .infinity,  alignment: .leading)
        
    }
}

struct ProductRew_Previews: PreviewProvider {
    static var previews: some View {
        ProductRew(product: productList[3])
            .environmentObject(cartManager())
    }
}
