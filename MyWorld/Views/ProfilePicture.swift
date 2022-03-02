//
//  ProfilePicture.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 2/10/22.
//

import SwiftUI

struct ProfilePicture: View {
    @StateObject var registerData = RegisterViewModel()
    var body: some View {
        ZStack{
            if registerData.image_Data.count == 0
            {
                
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                //.font(.system(size: 30))
                    .foregroundColor(.black)
                    .frame(width: 30, height: 25)
                    .background(Color.white)
                //.clipShape(Circle())
            }
            else {
                Image(uiImage: UIImage(data: registerData.image_Data)!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30)
                //.clipShape(Circle())
            }
        }
        
        .padding(.top)
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture()
    }
}
