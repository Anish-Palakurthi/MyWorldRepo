//
//  FetchUser.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 12/9/21.
//

import Foundation
import SwiftUI
import Firebase

let ref = Firestore.firestore()

func fetchUser(uid: String, completion: @escaping (UserModel) -> ())

{
    ref.collection("Users").document(uid).getDocument{ (doc, err)
        in
        guard let user = doc else {return}
        
        let username = user.data()?["username"] as! String
        let pic = user.data()?["imageurl"] as! String
        let zipcode = user.data()?["zipcode"] as! Int
        DispatchQueue.main.async{
            
            completion(UserModel(username : username, pic : pic, zipcode : zipcode))
        }
        
        
    }
}
