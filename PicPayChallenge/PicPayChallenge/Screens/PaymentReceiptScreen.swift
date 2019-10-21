//
//  PaymentReceiptScreen.swift
//  PicPayChallenge
//
//  Created by Kacio on 20/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct PaymentReceiptScreen: View {
    let people:PeopleModel
    let paymentamount:String
    var body: some View {
        GeometryReader{ geometry in
            NavigationView{
                VStack{
                    PeopleCellPaymentScreen(data: self.people)
                    Spacer()
                    Text("15/12/2022 às 16:34")
                    Spacer()
                    Text("Transação: 230010")
                   
                    ZStack{
                         Rectangle().path(in: CGRect(x: 20, y: 0, width: geometry.size.width - 40, height: 2)).foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                    }
                    HStack{
                        //Spacer()
                        Text("Cartão Master 1234").font(.custom("SF UI Text", size: 13)).padding(.leading, 20)
                        Spacer()
                        Text("R$\(self.paymentamount)").font(.custom("SF UI Text", size: 13)).padding(.trailing, 20)
                       //Spacer()
                        
                    }.padding(.top,-geometry.size.width/2.1)
                    ZStack{
                        Rectangle().path(in: CGRect(x: 20, y: 0, width: geometry.size.width - 40, height: 2)).foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                    }.padding(.top, -geometry.size.width/2.3)
                    HStack{
                        Text("Total pago").font(.custom("SF UI Text", size: 17)).padding(.leading, 20)
                        Spacer()
                        Text("R$\(self.paymentamount)").font(.custom("SF UI Text", size: 17)).padding(.trailing, 20)
                    }.padding(.top, -geometry.size.width/1.10)
                  
                }
                
            }
        }
    }
}

struct PaymentReceiptScreen_Previews: PreviewProvider {
    static var previews: some View {
        PaymentReceiptScreen(people:PeopleModel(id: 10002, name: "kacio", img: "bllal", username: "@kacioReis"), paymentamount: "0,15")
    }
}
