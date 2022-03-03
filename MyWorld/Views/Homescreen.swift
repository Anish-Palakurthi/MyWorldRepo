//
//  Homescreen.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 1/12/22.
//
import SwiftUI

struct Homescreen: View {
    @StateObject var registerData = RegisterViewModel()
    @StateObject var homeData = HomeScreenModel()
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 60, height: 60)
                Spacer()
                Text("MyWorld")
                    .font(Font.custom("Cabin-Regular", size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                Spacer()
                Spacer()
                NavigationLink(destination: Settings()) {
                    SettingsButton()
                }
                
                
                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            
            Feed()
            Spacer()
            HStack{
                
                
                
                Spacer()
                HomeButton()
                    .onTapGesture(perform:{
                        homeData.refreshHome()
                        
                    }
                    )
                Spacer()
                Spacer()
                NavigationLink(destination: ProfilePage()) {
                    
                    ProfilePicture()
                }
                Spacer()
                
            }}
        
    }
    
    
    
    
    
    
    
    
    struct Homescreen_Previews: PreviewProvider {
        static var previews: some View {
            Homescreen()
        }
    }
}
