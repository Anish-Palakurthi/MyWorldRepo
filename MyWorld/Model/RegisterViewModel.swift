//
//  RegisterViewModel.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 12/7/21.
//

import Foundation
import Firebase
import SwiftUI

class RegisterViewModel : ObservableObject{
    
    @Published var name = ""
    @Published var dob = Date()
    @Published var zipcode = ""
    @Published var footprint = ""
    @Published var userInit = false
    
    
    @Published var image_Data = Data(count: 0)
    @Published var picker = false
    
    let ref = Firestore.firestore()
    
    @Published var isLoading = false
    @AppStorage("Current Status") var status = false
    
    
    func register() {
        self.userInit = true
        isLoading = true
        //send user data to Firestore
        let uid = Auth.auth().currentUser!.uid
        
        UploadImage(imageData: image_Data, path: "profile_Photos") {(url) in
            self.ref.collection("Users")
                .document(uid).setData([
                
                    "uid": uid,
                    "imageurl": url,
                    "username": self.name,
                    "dob": self.dob,
                    "zipcode": self.zipcode,
                    "footprint": self.footprint,
                    "dateCreated": Date()
                
                ]) {(err) in
                    if err != nil{
                        self.isLoading = false
                        return
                    }
                    self.isLoading = false
                    //success means setting status as true
                 
                    self.status = true
                }
                                
        }
    }
}

