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
    @EnvironmentObject var network: Network
    var status = false
    var body: some View{
        
        NavigationView{
            VStack{
                //Homescreen()
                Login()
            }
         
        /*
        ScrollView{
            Text("All users")
                .font(.title).bold()
            VStack(alignment: .leading) {
                ForEach(network.users) { user in
                    HStack(alignment:.top) {
                        Text("\(user.id)")

                        VStack(alignment: .leading) {
                            Text(user.name)
                                .bold()

                            Text(user.email.lowercased())

                            Text(user.phone)
                        }
                    }
                    .frame(width: 300, alignment: .leading)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.6667672396, green: 0.7527905703, blue: 1, alpha: 0.2662717301)))
                    .cornerRadius(20)
                }
            }
        }
        .onAppear{
            network.getUsers()
        }
        }
        */
        
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
            .environmentObject(Network())
    }
}


