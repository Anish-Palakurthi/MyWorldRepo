//
//  FirestoreManager.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 3/29/22.
//

import Firebase
import Foundation



class FirestoreManager: ObservableObject{
    
    @Published var name: String = ""
    
    let docData: [String: Any] = [
        "name": "tempName",
        "dob": "tempDob"
        
    ]
    
    func createProfile(profileName: String){
        let db = Firestore.firestore()
        
        let docRef = db.collection("myworld-cd1fb").document("")
        
        docRef.setData(["name": profileName]){ error in
            if let error = error {
                print("Error writing document: \(error)")}
            else{
                print("Document successfully written!")
            }
            }
            
        }
    
    
    }
        
    func fetchName(){
        
        let db = Firestore.firestore()
        
        _ = db.collection("myworld-cd1fb").document("Profiles")
    
        
    }

