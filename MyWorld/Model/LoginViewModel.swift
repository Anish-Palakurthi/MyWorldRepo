//
//  LoginViewModel.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 12/1/21.
//

import Foundation
import SwiftUI
import Firebase

class LoginViewModel: ObservableObject{
    
    //country code
    @Published var code = ""
    //phone number
    @Published var number = ""
    
    //For any errors...
    
    @Published var errorMsg = ""
    @Published var error = false
    
    @Published var registerUser = false
    @AppStorage("current_status") var status = false
	
	@Published var isLoading = false
    
    func verifyUser(){
		
		isLoading = true
	
        
        Auth.auth().settings?.isAppVerificationDisabledForTesting = true
        
        let phoneNumber = "+" + code + number
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil){
            (ID, err) in
            
            if err != nil {
                self.errorMsg = err!.localizedDescription
                self.error.toggle()
				self.isLoading = false
                return
            }
            //Code sent successfully
            
			alertView(msg: "Enter Verification Code")
				{ (Code) in
                let credential = PhoneAuthProvider.provider().credential(withVerificationID: ID!, verificationCode: Code)
                
                Auth.auth().signIn(with: credential) { (res, err) in
                    
                    if err != nil{
                        self.errorMsg = err!.localizedDescription
                        self.error.toggle()
						self.isLoading = false
                        return
                    }
					self.checkUser()
					
                }
            }
            
        }
    }
    

    func checkUser() {
        let ref = Firestore.firestore()
        let uid = Auth.auth().currentUser!.uid
    
        ref.collection("Users").whereField("uid", arrayContains: uid).getDocuments{
            (snap, err) in
            
            if err != nil {
                self.registerUser.toggle()
				self.isLoading = false
                return
            }
            
			if snap!.documents.isEmpty{
				self.registerUser.toggle()
				self.isLoading = false
				return
			}
            self.status = true
        }
    }
}
    
