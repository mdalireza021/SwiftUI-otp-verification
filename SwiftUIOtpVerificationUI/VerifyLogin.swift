//
//  VerifyLogin.swift
//  SwiftUIOtpVerificationUI
//
//  Created by md ali reza on 23/7/23.

import SwiftUI

struct VerifyLogin: View {
    @State private var count = 15
    @State private var isTimerRunning = true
    let timerInterval = 1.0
    
    func startTimer() {
        
        Timer.scheduledTimer(withTimeInterval: timerInterval, repeats: true) { timer in
            if isTimerRunning {
                count -= 1
                if count == 0 {
                    // When count reaches 0, stop the timer
                    timer.invalidate()
                    isTimerRunning = false;
                    
                }
            }
        }
    }
    
    var body: some View {
        VStack() {
            VStack() {
                
        
                
                Text("OTP Verification")
                    .font(Font.custom("Inter", size: 25).weight(.bold))
                    .foregroundColor(Color(red: 0.09, green: 0.13, blue: 0.21))
                    .padding(.top, 100)
                
                Text("Please enter the 6-digit code sent to your ")
                    .font(Font.custom("Inter", size: 16))
                    .lineSpacing(24)
                    .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.41))
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                
                Text("email mdalireza021@gmail.com for verification.")
                    .font(Font.custom("Inter", size: 16))
                    .lineSpacing(24)
                    .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.41))
                
    
                let text: String = count < 10 ? "00:0\(count)": "00:\(count)";
            
                Text(text)
                    .font(Font.custom("Inter", size: 16).weight(.bold))
                    .foregroundColor(Color(red: 0.96, green: 0.51, blue: 0.16))
                    .padding(.top, 50)
                    .padding(.bottom, 50)
            }
            
            HStack() {
                
                ZStack(alignment: .center) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 48, height: 48)
                        .background(Color.white)
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.42, green: 0.39, blue: 1), lineWidth: 0.50)
                        )
                        .shadow(
                            color: Color(red: 0.42, green: 0.39, blue: 1, opacity: 0.16), radius: 8, y: 4
                        )
                    
                    TextField("", text: .constant(""))
                        .font(Font.custom("Inter", size: 24))
                        .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                        .multilineTextAlignment(.center)
                    
                }
                
                ZStack(alignment: .center) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 48, height: 48)
                        .background(Color.white)
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.42, green: 0.39, blue: 1), lineWidth: 0.50)
                        )
                        .shadow(
                            color: Color(red: 0.42, green: 0.39, blue: 1, opacity: 0.16), radius: 8, y: 4
                        )
                    
                    TextField("", text: .constant(""))
                        .font(Font.custom("Inter", size: 24))
                        .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                        .multilineTextAlignment(.center)
                        .keyboardType(.numberPad)
                    
                }
                ZStack(alignment: .center) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 48, height: 48)
                        .background(Color.white)
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.42, green: 0.39, blue: 1), lineWidth: 0.50)
                        )
                        .shadow(
                            color: Color(red: 0.42, green: 0.39, blue: 1, opacity: 0.16), radius: 8, y: 4
                        )
                    
                    TextField("", text: .constant(""))
                        .font(Font.custom("Inter", size: 24))
                        .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                        .multilineTextAlignment(.center)
                    
                }
                
                ZStack(alignment: .center) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 48, height: 48)
                        .background(Color.white)
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.42, green: 0.39, blue: 1), lineWidth: 0.50)
                        )
                        .shadow(
                            color: Color(red: 0.42, green: 0.39, blue: 1, opacity: 0.16), radius: 8, y: 4
                        )
                    
                    TextField("", text: .constant(""))
                        .font(Font.custom("Inter", size: 24))
                        .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                        .multilineTextAlignment(.center)
                    
                }
                
                ZStack(alignment: .center) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 48, height: 48)
                        .background(Color.white)
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.42, green: 0.39, blue: 1), lineWidth: 0.50)
                        )
                        .shadow(
                            color: Color(red: 0.42, green: 0.39, blue: 1, opacity: 0.16), radius: 8, y: 4
                        )
                    
                    TextField("", text: .constant(""))
                        .font(Font.custom("Inter", size: 24))
                        .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                        .multilineTextAlignment(.center)
                    
                }
                
                ZStack(alignment: .center) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 48, height: 48)
                        .background(Color.white)
                        .cornerRadius(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.42, green: 0.39, blue: 1), lineWidth: 0.50)
                        )
                        .shadow(
                            color: Color(red: 0.42, green: 0.39, blue: 1, opacity: 0.16), radius: 8, y: 4
                        )
                    
                    TextField("", text: .constant(""))
                        .font(Font.custom("Inter", size: 24))
                        .foregroundColor(Color(red: 0.15, green: 0.15, blue: 0.15))
                        .multilineTextAlignment(.center)
                }
                
            }
            
            HStack() {
                Text("I didn't receive any code.")
                    .font(Font.custom("Inter", size: 14))
                    .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.41))
                
                Button(action: {
                    count = 10
                    isTimerRunning = !isTimerRunning;
                    startTimer();
                }) {
                    Text("RESEND")
                        .font(Font.custom("Inter", size: 14))
                        .foregroundColor(  isTimerRunning ? Color(red: 0.38, green: 0.38, blue: 0.41) : Color(red: 0.42, green: 0.39, blue: 1))
                }
                .disabled(isTimerRunning)
                
            }
            
            .padding()
            
            Spacer()
            
            VStack() {
                Button(action: {
                    // Add your action here
                    print("Button tapped")
                    print(isTimerRunning)
                }) {
                    Text("VERIFY")
                        .font(Font.custom("Montserrat", size: 18).weight(.bold))
                        .foregroundColor(.white)
                        .frame(width: 328, height: 48)
                        .background(Color(red: 0.42, green: 0.39, blue: 1))
                        .cornerRadius(10)
                }
            }
        }
        .onAppear {
            startTimer()
        }
    }
}

