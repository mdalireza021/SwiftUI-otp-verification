//
//  RegisterPage.swift
//  SwiftUIOtpVerificationUI
//
//  Created by md ali reza on 23/7/23.
//

import SwiftUI
struct RegisterPage: View {
    @Binding var showLogin: Bool
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var password: String = ""
    @State private var isChecked:Bool = false
    @State private var isRegisterSuccess: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                
                Text("Lets Register\nAccount")
                    .font(Font.custom("Outfit", size: 37).weight(.bold))
                    .foregroundColor(.black)
                    .padding(.top,30)
                    .padding(.leading, 15)
                Spacer()
            }
            
            HStack {
                Text("Hello user , you have\na greatful journey")
                    .font(Font.custom("Outfit", size: 28))
                    .foregroundColor(.black)
                    .padding(.top,20)
                    .padding(.leading, 15)
                    .padding(.bottom,30)
                Spacer()
            }
            
            Rectangle()
                .foregroundColor(.clear)
                .frame( height: 50)
                .background(Color(red: 0.77, green: 0.77, blue: 0.77).opacity(0.20))
                .cornerRadius(5)
                .overlay(
                    HStack {
                        TextField("Full Name", text: $name)
                            .font(Font.custom("Montserrat", size: 18).weight(.light))
                            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                        Spacer()
                        
                        Image("user")
                    }
                        .padding(.horizontal, 10)
                )
                .padding(.horizontal, 15)
                .padding(.bottom, 10)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame( height: 50)
                .background(Color(red: 0.77, green: 0.77, blue: 0.77).opacity(0.20))
                .cornerRadius(5)
                .overlay(
                    HStack {
                        TextField("Valid email", text: $email)
                            .font(Font.custom("Montserrat", size: 18).weight(.light))
                            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                        Spacer()
                        
                        Image("mail")
                    }
                        .padding(.horizontal, 10)
                )
                .padding(.horizontal, 15)
                .padding(.bottom, 10)
            
            
            Rectangle()
                .foregroundColor(.clear)
                .frame( height: 50)
                .background(Color(red: 0.77, green: 0.77, blue: 0.77).opacity(0.20))
                .cornerRadius(5)
                .overlay(
                    HStack {
                        TextField("Phone number", text: $email)
                            .font(Font.custom("Montserrat", size: 18).weight(.light))
                            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                        Spacer()
                        
                        Image("smartphone")
                    }
                        .padding(.horizontal, 10)
                )
                .padding(.horizontal, 15)
                .padding(.bottom, 10)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame( height: 50)
                .background(Color(red: 0.77, green: 0.77, blue: 0.77).opacity(0.20))
                .cornerRadius(5)
                .overlay(
                    HStack {
                        SecureField("Strong password", text: $password)
                            .font(Font.custom("Montserrat", size: 18).weight(.light))
                            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                        Spacer()
                        
                        Image("lock")
                    }
                        .padding(.horizontal, 15)
                )
                .padding(.horizontal, 15)
                .padding(.bottom, 5)
            
            CheckboxView(checked: $isChecked, text: "By checking the box you agree to our Terms and Conditions.")
                .padding(.horizontal, 25)
            
            Spacer()
            
            VStack() {
                Button(action: {
                    isRegisterSuccess = true;
                    print("click register page button")
                }) {
                    
                    HStack {
                        Text("Next")
                            .font(Font.custom("Montserrat", size: 20).weight(.semibold))
                            .foregroundColor(Color(red: 0.99, green: 0.99, blue: 0.99))
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                    }
                    
                    
                    .frame(width: 328, height: 48)
                    .background(Color(red: 0.42, green: 0.39, blue: 1))
                    .cornerRadius(10)
                    
                }
            }
            
            HStack() {
                Text("Already a member? ")
                    .font(Font.custom("Montserrat", size: 13).weight(.medium))
                    .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                
                Button(action: {
                    showLogin = true
                    
                }) {
                    Text("Log In")
                        .font(Font.custom("Montserrat", size: 15).weight(.medium))
                        .foregroundColor( Color(red: 0.42, green: 0.39, blue: 1))
                }
                
            }
            .padding()
            
        }
        
    }
}
