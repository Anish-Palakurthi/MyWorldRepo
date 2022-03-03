//
//  ProfilePage.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 1/31/22.
//

import SwiftUI

struct ProfilePage: View {
    @StateObject var registerData = RegisterViewModel()
    
    
    var body: some View {
        VStack{
            Spacer()
            ZStack{
                if registerData.image_Data.count == 0
                {
                    Image(systemName: "person")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(.black)
                        .frame(width: 90, height: 90)
                        .background(Color.white)
                }
                else {
                    Image(uiImage: UIImage(data: registerData.image_Data)!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 90, height: 90)
                }
            }
            Spacer()
            
            
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
