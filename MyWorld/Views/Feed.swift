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
                ForEach(posts){post in
                    VStack{
                        Image(post.imageName)
                        Text(post.description)
                    }
                    

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
