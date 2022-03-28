//
//  ContentView.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 10/12/21.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct ContentView: View {
    
    var status = false
    var body: some View{
        NavigationView{
            VStack{
                Homescreen()
                //Login()
            }
        }
        
        
    }
    
struct FirebaseLoginApp: App{
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene{
        WindowGroup{
            ContentView()
        }
    }
    
    
}


struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

}
