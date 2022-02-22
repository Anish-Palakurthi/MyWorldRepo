//
//  PostModel.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 2/11/22.
//

import Foundation
import Firebase
import SwiftUI

struct PostModel: Hashable, Codable, Identifiable {
    var id: Int
    var link: String
    var description: String
    var category: String
    
    
    var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    
}

