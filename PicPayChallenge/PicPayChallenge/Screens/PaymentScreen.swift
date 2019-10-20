//
//  PaymentScreen.swift
//  PicPayChallenge
//
//  Created by Kacio on 19/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct PaymentScreen: View {
    @ObservedObject var mecaninc = MechanicalPaymentview()
    let people:PeopleModel
    init(data people:PeopleModel){
        self.people = people
    }
    var body: some View {
        NavigationView{
            VStack{
                PeopleCellPaymentScreen(data: people)
                Spacer()
                PaymentTextField(text: mecaninc)
                Spacer()
                HStack{
                    Text("Mastercard 1234 •").font(.custom("SF UI Text;", size: 16))
                    NavigationLink(destination: RegistrationScreen()) {
                        Text("EDITAR").font(.custom("SF UI Text;", size: 16)).foregroundColor(Color(#colorLiteral(red: 0, green: 0.7864664197, blue: 0.4217334986, alpha: 1)))
                    }
                    
                }
                Spacer()
                Button(action: {
                }) {
                    Text("Pagar")
                    
                }.frame(width: CGFloat(296), height: CGFloat(48), alignment: .center)
                    .background(mecaninc.colorChange)
                    .foregroundColor(.white)
                    .cornerRadius(100.0)
                    .animation(Animation.spring().speed(2))
                    .font(.custom("SF UI Text;", size: 18))
                Spacer()
            }
        }
    }
}

struct PaymentScreen_Previews: PreviewProvider {
    static var previews: some View {
        PaymentScreen(data:PeopleModel(id: 100, name: "Kacio Henrique", img: "bla", username: "@KacioReis"))
    }
}
