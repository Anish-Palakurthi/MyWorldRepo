//
//  Settings.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 2/8/22.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        VStack{
            Text("Settings")
                .font(Font.custom("Cabin-Regular", size: 40))
                .fontWeight(.heavy)
                .foregroundColor(.black)
        
        Button(action: {
            }, label:{
            Text("Change Name")
            .foregroundColor(.white)
            .fontWeight(.bold)
            .padding(.vertical)
            .frame(width: UIScreen.main.bounds.width - 100)
            .background(Color("Blue"))
            .clipShape(Capsule())
    })
            Spacer()
            Button(action: {
            }, label:{
            Text("Change Credit Card Number")
            .foregroundColor(.white)
            .fontWeight(.bold)
            .padding(.vertical)
            .frame(width: UIScreen.main.bounds.width - 100)
            .background(Color("Blue"))
            .clipShape(Capsule())
            
    })
            Spacer()
            Button(action: {
            }, label:{
            Text("Change Personal Information")
            .foregroundColor(.white)
            .fontWeight(.bold)
            .padding(.vertical)
            .frame(width: UIScreen.main.bounds.width - 100)
            .background(Color("Blue"))
            .clipShape(Capsule())
            
    })
            Spacer()
    }
}
}
struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
