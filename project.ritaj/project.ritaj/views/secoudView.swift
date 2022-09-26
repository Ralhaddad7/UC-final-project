//
//  secoudView.swift
//  project.ritaj
//
//  Created by Ritaj Alhaddad on 26/09/2022.
//

import SwiftUI


struct secoundView:View {
    var body: some View {
        NavigationView {
ZStack{
Image("shopping1")
    .resizable()
    .ignoresSafeArea()
    VStack{
        Text("shopping application 🛍 !")
            .font(.title)
            .font(.largeTitle)
            .bold()
            .foregroundColor(.pink)
            .fontWeight(.semibold)
            .padding()
        Spacer() }
    
    
    NavigationLink(destination: ContentView(),
                   label: { Text("Tap me !")
            .padding()
            .background(Color.pink)
            .foregroundColor(.white)
            .cornerRadius(40)
            .font(.title2)})
    
}

}
}
    
    struct secoundView_Previews: PreviewProvider {
        static var previews: some View {
            secoundView()
        }
    }
}
