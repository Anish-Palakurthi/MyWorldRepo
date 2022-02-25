//
//  Feed.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 2/10/22.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        
        NavigationView {
            GeometryReader { geometry in
                List {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Text("Story 1")
                            Text("Story 2")
                            Text("Story 3")
                            Text("Story 4")
                            Text("Story 5")
                        }
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        Spacer()
                        Image("water")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: 250)
                            .clipped()
                        Text("test")
                            .lineLimit(nil)
                            .font(.system(size: 15))
                            .padding(.leading, 16).padding(.trailing, 16).padding(.bottom, 16)
                    }.listRowInsets(EdgeInsets())
                }
            }
        }
    }
}


/*
 ScrollView {
 VStack(spacing: 20) {
 ForEach(posts){post in
 VStack{
 Image(post.imageName)
 .frame(width: 500, height: 500, alignment: .center)
 Text(post.description)
 }
 
 
 }
 
 
 }
 }
 */

/*
 
 */
struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
