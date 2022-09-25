//
//  productCard.swift
//  project.ritaj
//
//  Created by Ritaj Alhaddad on 24/09/2022.
//

import SwiftUI

struct productCard: View {
    @EnvironmentObject var cartManagaer : cartManager
    var product: product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
               
                VStack(alignment:.leading){
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180,  alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                
                }
            .frame(width: 180, height: 250)
        .shadow(radius: 3)
            Button {
                cartManagaer.addToCart(product: product)
                
            } label: {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
        }
}

struct productCard_Previews: PreviewProvider {
    static var previews: some View {
        productCard(product:productList[0])
            .environmentObject(cartManager())
    }
}
