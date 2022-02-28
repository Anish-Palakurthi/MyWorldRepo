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
                Spacer()
                Spacer()
                Text("MyWorld")
                Spacer()
                Spacer()
                NavigationLink(destination: Settings()) {
                    SettingsButton()
                }
                .navigationTitle("Settings")
                
                Spacer()
            }
            
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
