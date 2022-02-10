//
//  SettingsButton.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 2/10/22.
//

import SwiftUI

struct SettingsButton: View {
    var body: some View {
        Image(systemName: "gearshape")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 30, height: 30)
    }
}

struct SettingsButton_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButton()
    }
}
