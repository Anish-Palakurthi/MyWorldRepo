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
                    ForEach(posts) {post in
                        VStack(alignment: .leading, spacing: 8) {
                            Spacer()
                            Link(destination: URL(string: post.link)!){
                                Image(post.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 250, height: 250, alignment: .center)
                                    .clipped()
                                Text(post.description)
                                    .lineLimit(nil)
                                    .font(.system(size: 15))
                                    .padding(.leading, 16).padding(.trailing, 16).padding(.bottom, 16)
                            }
                        }.listRowInsets(EdgeInsets())
                    }
                }}
        }
    }}

/*
 Link(destination: URL(string: "https://www.simpleswiftguide.com")!) {
 Image(systemName: "paperplane")
 .font(.largeTitle)
 }
 */

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
