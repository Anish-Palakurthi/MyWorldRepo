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
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Image(systemName: "gearshape")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30)
                    .onTapGesture(perform: {
                        homeData.goSettings()
                    })
                Spacer()
            }
            
            Spacer()
            HStack{
                TabView{
                    Homescreen()
                        .tabItem{
                            Image(systemName: "house")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30)
                                .onTapGesture(perform:{
                                    
                                    homeData.refreshHome()
                                    
                                }
                                )
                        }
                    Calculator()
                        .tabItem{
                            Image(systemName: "candybarphone")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 20, height: 20)
                                .onTapGesture(
                                    perform:{
                                        homeData.goCalc()
                                        
                                    })
                        }
                    
                    ProfilePage()
                        .tabItem{
                            ZStack{
                                if registerData.image_Data.count == 0
                                {
                                    Image(systemName: "person")
                                        .font(.system(size: 65))
                                        .foregroundColor(.black)
                                        .frame(width: 20, height: 20)
                                        .background(Color.white)
                                        .clipShape(Circle())
                                        .onTapGesture(
                                            perform:{
                                                homeData.goProfile()
                                                
                                            })
                                }
                                else {
                                    Image(uiImage: UIImage(data: registerData.image_Data)!)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 20, height: 20)
                                        .clipShape(Circle())
                                        .onTapGesture(
                                            perform:{
                                                homeData.goProfile()
                                                
                                            })
                                }
                            }
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

