//
//  CartButton.swift
//  project.ritaj
//
//  Created by Ritaj Alhaddad on 25/09/2022.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts : Int
    var body: some View {
        ZStack(alignment: .topTrailing ){
        Image(systemName: "cart")
                .padding(.top,5)
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                .font(.caption2).bold()
                .foregroundColor(.white)
                .frame(width: 15, height: 15)
                .background(Color.red)
                .cornerRadius(50)
        }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 1)
    }
}
