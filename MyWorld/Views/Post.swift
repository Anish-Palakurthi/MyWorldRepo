//
//  Post.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 2/10/22.
//

import SwiftUI

struct Post: View {
    let post: PostModel
    let screenWidth: CGFloat
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 8) {
                Image(post.imageName)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                Text(post.category).font(.headline)
            }.padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 0))
            Image(post.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: screenWidth, height: 250)
                .clipped()
            Text(post.description)
                .lineLimit(nil)
                .font(.system(size: 15))
                .padding(.leading, 16).padding(.trailing, 16).padding(.bottom, 16)
        }.listRowInsets(EdgeInsets())
    }
}
/*

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        //Post(post: PostModel, screenWidth: UIScreen.main.bounds.size.width)
    }
}
*/
