//
//  ContentView.swift
//  project.ritaj
//
//  Created by Ritaj Alhaddad on 24/09/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var CartManager = cartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        productCard(product: product)
                            .environmentObject(CartManager)
                    }
                }.padding()
            }
            .navigationTitle(Text("online shop"))
            .toolbar {
                NavigationLink {
                  CartView()
                        .environmentObject(CartManager)

                }label: {
                    CartButton(numberOfProducts: CartManager.products.count)

                }
            }        .navigationViewStyle(StackNavigationViewStyle())

        }

    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
