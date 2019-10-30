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
    let userDefault = ManegerUserDefaultCard()
    var body: some View {
        NavigationView{
            VStack{
                ImagePeopleCell(imageUrl: self.people.img, size: 100)
                Text(self.people.username)
                Text(DateFormart().getData())
                ReceiptScreenDisplayText(size: 13, text: "Cartão Master \(userDefault.getValue(.numberCard))", value:self.paymentamount)
                 ReceiptScreenDisplayText(size: 17, text: "Total Pago", value:self.paymentamount)
                Spacer()
            }
            .navigationBarTitle("Recibo")
        }
    }
}

struct PaymentReceiptScreen_Previews: PreviewProvider {
    static var previews: some View {
        PaymentReceiptScreen(people:PeopleModel(id: 10002, name: "kacio", img: "bllal", username: "@kacioReis"), paymentamount: "0,15")
    }
}
