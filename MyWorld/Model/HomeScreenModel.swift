//
//  HomeScreenModel.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 1/26/22.
//

import Foundation
import Firebase
import SwiftUI

class HomeScreenModel : ObservableObject{
    @Published var settings = false
    @Published var calculator = false
    @Published var profilePage = false
    
    func goSettings(){
        settings = true
        
    }
    
    func goCalc(){
        calculator = true
        
    }
    
    func goProfile() {
        profilePage = true
    }
    
    func refreshHome(){
        
        
    }
    
    
}
