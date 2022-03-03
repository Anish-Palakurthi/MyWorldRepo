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
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
