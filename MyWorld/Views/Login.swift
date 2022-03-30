//
//  Login.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 10/12/21.
//

import SwiftUI
import FirebaseAuth
    
struct Login: View {
    @StateObject var loginData = LoginViewModel()
    
    
    var body: some View
    {
        VStack{
            HStack{
                Spacer(minLength: 0)
                
                Text("MyWorld Login")
                    .font(Font.custom("Cabin-Regular", size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    
                
                Spacer(minLength: 0)
            }
            .padding()
            LogoIcon()
            
            HStack(spacing: 15){
                TextField("1", text: $loginData.code)
                    .padding()
                    .keyboardType(.numberPad)
                    .frame(width: 45)
                    .background(Color.black.opacity(0.06))
                    .cornerRadius(15)
                    .font(Font.custom("Cabin-Regular", size: 18))
                
                TextField("1234567890", text: $loginData.number)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color.black.opacity(0.06))
                    .cornerRadius(15)
                    .font(Font.custom("Cabin-Regular", size: 18))
            }
            .padding()
            .padding(.top,10)
            
            Button(action: loginData.verifyUser, label:{
                Text("Verify")
                    .foregroundColor(.white)
                    .font(Font.custom("Cabin-Bold", size: 18))
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
                    .background(Color("Green"))
                    .clipShape(Capsule())

            })
            
                .disabled(loginData.code == "" || loginData.number == "" ? true : false)
                .opacity(loginData.code == "" || loginData.number == "" ? 0.5 : 1)
            Spacer(minLength: 0)
        }
        
        //Display Alert 
        .alert(isPresented: $loginData.error, content: {
            
            Alert(title: Text("Error"), message: Text(loginData.errorMsg), dismissButton: .destructive(Text("OK")))
        })
        //covers screen with an entirely new screen
        .fullScreenCover(isPresented: $loginData.registerUser, content: {
            
            Register()
        })
    }
}
