//
//  PostModel.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 2/11/22.
//

import Foundation
import Firebase
import SwiftUI

struct PostModel: Hashable, Codable {
    var id: Int
    var link: String
    var description: String
    var category: String
    var subcategory: String
    
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    
}

