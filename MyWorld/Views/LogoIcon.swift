//
//  LogoIcon.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 2/10/22.
//

import SwiftUI

struct LogoIcon: View {
    var body: some View {
        Image("Logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200, alignment: .center)
    }
}

struct LogoIcon_Previews: PreviewProvider {
    static var previews: some View {
        LogoIcon()
    }
}
