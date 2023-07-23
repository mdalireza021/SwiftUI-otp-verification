//
//  LoginPage.swift
//  SwiftUIOtpVerificationUI
//
//  Created by md ali rez on 23/7/23.
//

import SwiftUI

struct LoginPage: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var rememberMe: Bool = false
    @State private var isLoginSuccess: Bool = false
    
    @Binding var showLogin: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Lets Sign you in")
                        .font(Font.custom("Outfit", size: 37).weight(.bold))
                        .foregroundColor(.black)
                    //.padding(.top,30)
                        .padding(.leading, 15)
                    Spacer()
                }
                HStack {
                    
                    Text("Welcome Back ,\nYou have been missed")
                        .font(Font.custom("Outfit", size: 28))
                        .foregroundColor(.black)
                        .padding()
                    Spacer()
                }
                
                .padding(.bottom, 30)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame( height: 50)
                    .background(Color(red: 0.77, green: 0.77, blue: 0.77).opacity(0.20))
                    .cornerRadius(5)
                    .overlay(
                        HStack {
                            TextField("Enter your email", text: $email)
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
                            SecureField("Password", text: $password)
                                .font(Font.custom("Montserrat", size: 18).weight(.light))
                                .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                            Spacer()
                            
                            Image("lock")
                        }
                            .padding(.horizontal, 15)
                    )
                    .padding(.horizontal, 15)
                    .padding(.bottom, 5)
                
                HStack {
                    CheckboxView(checked: $rememberMe, text: "Remember me")
                    
                    Spacer()
                    
                    Button(action: {
                        // Handle the forgot password action here
                    }) {
                        Text("Forgot Password?")
                            .font(Font.custom("Arial", size: 12))
                            .foregroundColor(Color(red: 0.42, green: 0.39, blue: 1))
                    }
                }
                .padding(.horizontal, 25)
                
                Spacer()
                VStack() {
                    Button(action: {
                        // Add your action here
                        isLoginSuccess = true;
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
                    Text("New Member? ")
                        .font(Font.custom("Montserrat", size: 13).weight(.medium))
                        .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                    
                    Button(action: {
                        showLogin = false
                        
                    }) {
                        Text("Register now")
                            .font(Font.custom("Montserrat", size: 15).weight(.medium))
                            .foregroundColor( Color(red: 0.42, green: 0.39, blue: 1))
                        
                    }
                    
                }
                .padding()
                
                NavigationLink(
                    //destination: VerifyLogin(),
                    destination: VerifyLogin(),
                    isActive: $isLoginSuccess,
                    label: {
                        EmptyView()
                    }
                )
                .hidden()
            }
            
            //.navigationBarTitle("Lets Sign you in", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            
        }
    }
}
