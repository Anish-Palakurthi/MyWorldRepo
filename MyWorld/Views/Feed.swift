//
//  Feed.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 2/10/22.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0..<10) {_ in
                    Post()
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
            }
        }
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
