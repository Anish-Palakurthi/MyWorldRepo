//
//  Feed.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 2/10/22.
//

import SwiftUI

struct Feed: View {
    @State private var showSafari: Bool = false
    var body: some View {
        ScrollView {
        
                        ForEach(posts) {post in
                        VStack(alignment: .center, spacing: 8) {
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
                            .id(post)
                        
                    }
            
                
                
            ScrollViewReader { value in
                Button("Jump to Top"){
                    value.scrollTo(1, anchor:.top)
                }
            
            
        }
        }
    }}



struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
