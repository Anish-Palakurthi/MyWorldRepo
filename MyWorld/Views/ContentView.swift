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
                Login()
            }
        }
    }
    /*
    init() {
           FirebaseApp.configure()
       }
    
    @ObservedObject var userAuth: UserAuth = UserAuth()
    @ViewBuilder
    var body: some View{
        
        if !userAuth.isLoggedin{
            
                NavigationView{
                    VStack{
                        Homescreen()
                    }
                }
                .navigationBarHidden(true)
            }
        else {
            Register()
        }
}
}

class UserAuth: ObservableObject {
    @Published var isLoggedin = false     // published property to update view

    func login() {
        // login request... on success:
        self.isLoggedin = true
    }

    func logout() {
        // login request... on success:
        self.isLoggedin = false
    }
}
*/
struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

}
