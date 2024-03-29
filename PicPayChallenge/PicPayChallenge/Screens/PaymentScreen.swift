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
    @Binding var isOn:Bool
    let people:PeopleModel?
    @ObservedObject var keybord = KeyBordSlide()
    @State var presentation = false
    @ObservedObject var postPayment = NetworkManegerPost(url:"http://careers.picpay.com/tests/mobdev/transaction")
    let userDefault = ManegerUserDefaultCard()
    var body: some View {
        NavigationView{
            VStack{
                PeopleCellPaymentScreen(data: self.people!)
                Spacer()
                PaymentTextField(text: mecaninc)
                Spacer()
                HStack{
                    Text("\(userDefault.getValue(.numberCard) ?? "Sem Cartão") •").font(.custom("SF UI Text;", size: 16))
                    Text("EDITAR").font(.custom("SF UI Text;", size: 16)).foregroundColor(Color(#colorLiteral(red: 0, green: 0.7864664197, blue: 0.4217334986, alpha: 1))).onTapGesture {
                        self.isOn.toggle()
                    }
                }
                Spacer()
                Button(action: {
                    let trasiation = Transiation(cardNumber: self.userDefault.getValue(.numberCard), cvv: Int(self.userDefault.getValue(.cvv)) ?? 0, value:  Double(self.mecaninc.value) ?? 0.0, expiryDate: self.userDefault.getValue(.expiry), destinationUserId: self.people?.id ?? 0)
                        self.postPayment.makePost(trasiation:trasiation)
                    if self.postPayment.status{
                         self.presentation = self.mecaninc.isValido
                    }
                   
                }) {
                    Text("Pagar")
                    
                }.frame(width: CGFloat(296), height: CGFloat(48), alignment: .center)
                    .background(mecaninc.colorChange)
                    .foregroundColor(.white)
                    .cornerRadius(100.0)
                    .animation(Animation.spring().speed(2))
                    .font(.custom("SF UI Text;", size: 18))
                    .sheet(isPresented: $presentation) {
                        PaymentReceiptScreen(people: self.people!, paymentamount: self.mecaninc.value)
                }
                Spacer()
            }
            }.offset(y:-keybord.slide)
    }
}

//struct PaymentScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        PaymentScreen(data:PeopleModel(id: 100, name: "Kacio Henrique", img: "bla", username: "@KacioReis"))
//    }
//}
