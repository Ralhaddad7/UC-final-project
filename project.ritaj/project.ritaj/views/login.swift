//
//  ContentView.swift
//  project.ritaj
//
//  Created by Ritaj Alhaddad on 26/09/2022.
//

import SwiftUI

struct login: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    var body: some View {
        NavigationView{
            
            ZStack{
                
                
                Color.pink
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack{
                    Text("Login your acc 🛍")
                        .foregroundColor(.pink)
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username",text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.pink.opacity(0.3))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongUsername))
                    TextField("password",text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.pink.opacity(0.3))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongPassword))
                    
                    Button("Login"){
                        autheticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.pink)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Text("You are ligged in @\(username)"),isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                    
                    
                }
                
                
            }
            .navigationBarHidden(true)
        }
    }
    func autheticateUser(username: String , password: String){
        if username.lowercased() == "shopping2022" {
            wrongUsername = 0
            if password.lowercased() == "abc123" {
                wrongPassword = 0
                showingLoginScreen = true }
            else { wrongUsername = 2 }
        }  else { wrongPassword = 2 }
            
           
            
            }
        }
                           

struct login_Previews: PreviewProvider {
    static var previews: some View {
        login()
    }
}
