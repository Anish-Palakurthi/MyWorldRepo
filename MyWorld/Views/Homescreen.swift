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
                TabView{
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Settings()
                        .tabItem{
                            SettingsButton()
                                .onTapGesture(perform: {
                                    homeData.goSettings()
                                })
                        }
                    Spacer()
                }
            }
            Feed()
            Spacer()
            HStack{
                TabView{
                    Homescreen()
                        .tabItem{
                            HomeButton()
                                .onTapGesture(perform:{
                                    homeData.refreshHome()
                                    
                                }
                                )
                        }
                    ProfilePage()
                        .tabItem{
                            ProfilePicture()
                                .onTapGesture(
                                    perform:{
                                        homeData.goProfile()
                                        
                                    })
                        }
                }
            }
            Spacer()
        }
    }
    
}





struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        Homescreen()
    }
}

