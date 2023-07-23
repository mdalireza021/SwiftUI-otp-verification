//
//  ContentView.swift
//  SwiftUIOtpVerificationUI
//
//  Created by md ali reza on 23/7/23.

import SwiftUI

struct ContentView: View {
    @State private var showLogin = true
    
    var body: some View {
        NavigationView {
            if showLogin {
                LoginPage(showLogin: $showLogin)
                    .navigationBarHidden(true)
            } else {
                RegisterPage(showLogin: $showLogin)
                    .navigationBarHidden(true)
            }
        }
    }
}

struct CheckboxView: View {
    @Binding var checked: Bool
    var text: String
    
    var body: some View {
        HStack {
            Button(action: {
                self.checked.toggle()
            }) {
                
                Image(systemName: checked ? "checkmark.square.fill" : "square")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .cornerRadius(3)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .inset(by: 0.50)
                            .stroke(Color(red: 0.15, green: 0.15, blue: 0.15), lineWidth: 0.50)
                    )
            }
            
            Text(text)
                .font(Font.custom("Arial", size: 12))
                .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
