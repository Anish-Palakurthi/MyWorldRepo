//
//  Register.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 12/7/21.
//

import SwiftUI

struct Register: View {
    @State var selectedData = Date()
    
    @AppStorage("name") var name = ""
    @AppStorage("zipcode") var zipcode = ""
    //@AppStorage("dob") var dob = ""
    
    
    @StateObject var registerData = RegisterViewModel()
    
    var body: some View {
        VStack{
            HStack{
                Text("Register")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .keyboardType(.alphabet)
                    .foregroundColor(.white)
                Spacer(minLength: 0)
            }
            .padding()
            ZStack{
                if registerData.image_Data.count == 0
                {
            
                Image(systemName: "person")
                    .font(.system(size: 65))
                    .foregroundColor(.black)
                    .frame(width: 115, height: 115)
                    .background(Color.white)
                    .clipShape(Circle())
                    }
                else {
                    Image(uiImage: UIImage(data: registerData.image_Data)!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 115, height: 115)
                        .clipShape(Circle())
                    }
                }
                
            .padding(.top)
            .onTapGesture(perform: {
                registerData.picker.toggle()
            })
            
            HStack(spacing: 15){
                
                TextField("Name", text: $registerData.name)
                    .padding()
                    .background(Color.black.opacity(0.06))
                    .cornerRadius(15)
                    
            }
            .padding()
            
            HStack{
                DatePicker("Date of Birth", selection: $registerData.dob, displayedComponents: .date)
                    .padding()
                    .background(Color.black.opacity(0.06))
                    .cornerRadius(15)
            }
            .padding()
           
            
            HStack{
                TextField("Zipcode", text: $registerData.zipcode)
                    .padding()
                    .background(Color.black.opacity(0.06))
                    .cornerRadius(15)
        }
            .padding()

            
            if registerData.isLoading {
                ProgressView()
                    .padding()
            }
            
            else {
            
                Button(action: {
                    registerData.register()
                    name = registerData.name
                    zipcode = registerData.zipcode
                    //dob = registerData.dob
                    
                    
                    
                }, label:{
                Text("Register")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
                    .background(Color("Green"))
                    .clipShape(Capsule())
            })
            
            .disabled(registerData.zipcode == "" || registerData.name == "" ? true : false)
            .opacity(registerData.zipcode == "" || registerData.name == "" ? 0.5 : 1)
            Spacer(minLength: 0)
        }
        }
        .sheet(isPresented: $registerData.picker, content: {
            ImagePicker(picker: $registerData.picker, img_Data: $registerData.image_Data)
        })
        
        .fullScreenCover(isPresented: $registerData.userInit, content: {
            
            AddCard()
        })
}

}


