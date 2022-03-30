//
//  AddCard.swift
//  MyWorld
//
//  Created by Anish Palakurthi on 1/21/22.
//

import SwiftUI

struct AddCard: View {
    @StateObject var cardData = CardModel()
    @StateObject var registerData = RegisterViewModel()
    @AppStorage("cardNumber") var cardNumber = ""
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Spacer()
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70, height: 70, alignment: .topLeading)
                    Spacer()
                    Text("MyWorld")
                        .font(Font.custom("Cabin-Regular", size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .padding(.trailing, 20.0)
                        
                    Spacer()
                    ProfilePicture()
                        .padding(.trailing, 12.0)
                    Spacer()
                    
                    
                }
                Spacer()
                Text("MyWorld calculates the carbon cost of your credit card purchases and presents alternative products and services of lower carbon footprints.")
                    .font(Font.custom("Quicksand", size: 20))
                    .padding()
                
                
                Spacer()
                Text("Ideally, this would be incorporated into a banking app as a widget of sorts as there would be less fear of handing your data away to someone who already manages it.")
                    .font(Font.custom("Quicksand", size: 20))
                    .padding()
                Spacer()
                HStack{
                    Spacer()
                    TextField("Please enter your credit card number", text: $cardData.cardNumber)
                        .keyboardType(.numberPad)
                    Spacer()
                }
                .padding()
                
                Spacer()
                
                NavigationLink(destination: Homescreen()){
                    //Button(action: cardData.newCard, label:{
                        Text("Add")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 100)
                            .background(Color("Green"))
                            .clipShape(Capsule())
                    }
              //)
                    
                        .disabled(cardData.cardNumber == "" ? true : false)
                        .opacity(cardData.cardNumber == "" ? 0.5 : 1)
                        .onTapGesture {
                            cardNumber = cardData.cardNumber
                        }
                    
                    
                }
                Spacer()
                .navigationBarTitle("")
                .navigationBarHidden(true)
                
            }
        }
    }

struct AddCard_Previews: PreviewProvider {
    static var previews: some View {
        AddCard()
    }
}
