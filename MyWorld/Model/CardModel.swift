//
//  CardModel.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 1/21/22.
//

import Foundation
import Firebase
import SwiftUI



class CardModel : ObservableObject{
    //@StateObject var user = UserModel(username: "sample", pic: "sample", zipcode: 5)
    @Published var cardNumber = ""
    @Published var cardFilled = false
    
    @Published var errorMsg = ""
    @Published var error = false
    
    
    let ref = Firestore.firestore()
    
    @AppStorage("current_status") var status = false
    
    @Published var isLoading = false
    
    
    func newCard()
    {
        isLoading = true
        
        Auth.auth().settings?.isAppVerificationDisabledForTesting = true
        
        let uid = Auth.auth().currentUser!.uid
        self.cardFilled.toggle()
        ref.collection("Users").whereField("uid", arrayContains: uid).getDocuments{
            (snap, err) in
            
            if err != nil {
                self.cardFilled.toggle()
                self.isLoading = false
                return
            }
            
            if snap!.documents.isEmpty{
                self.cardFilled.toggle()
                self.isLoading = false
                return
            }
            self.status = true
        }
        
        self.ref.collection("Users")
        
            .document(uid).setData([
                
                "cardNumber": self.cardNumber,
                
            ]) {(err) in
                if err != nil{
                    return
                }
            }
        let docData: [String: Any] = [
            "cardNumber": cardNumber,
        ]
        
        let db = Firestore.firestore()
    }
}
