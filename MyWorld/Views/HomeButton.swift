//
//  HomeButton.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 2/10/22.
//

import SwiftUI

struct HomeButton: View {
    var body: some View {
        Image(systemName: "house")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 30, height: 30)
    }
}

struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton()
    }
}
