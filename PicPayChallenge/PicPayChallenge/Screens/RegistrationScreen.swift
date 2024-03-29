//
//  RegistrationScreen.swift
//  PicPayChallenge
//
//  Created by Kacio on 18/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct RegistrationScreen: View {
    @ObservedObject var card:CardPay = CardPay()
    @ObservedObject private var kGuardian = KeyboardGuardian(textFieldCount: 4)
    var body: some View {
        VStack{
            HStack{
                Text("Cadastrar cartão").font(.custom("SF UI Text;", size: 28)).padding()
                 Spacer()
            }
            //Spacer()
            PaymentText(value: $card.numberCard, showField: $kGuardian.showField, TypeKeyBoard: .namePhonePad, placeHoad: "Número do Cartão", row: 0).background(GeometryGetter(rect: $kGuardian.rects[0]))
            Spacer()
            PaymentText(value: $card.cardholderName, showField: $kGuardian.showField, TypeKeyBoard: .namePhonePad, placeHoad: "Nome do titular", row: 1).background(GeometryGetter(rect: $kGuardian.rects[1]))
            Spacer()
            HStack{
                PaymentText(value: $card.expiry, showField: $kGuardian.showField, TypeKeyBoard: .numbersAndPunctuation, placeHoad: "Vencimento", row: 2).background(GeometryGetter(rect: $kGuardian.rects[2]))
                PaymentText(value: $card.cvv, showField: $kGuardian.showField, TypeKeyBoard: .numbersAndPunctuation, placeHoad: "CVV", row: 3).background(GeometryGetter(rect: $kGuardian.rects[3]))
            }
            if(card.isValid){
                Button(action: {
                    self.card.registerCard()
                }) {
                  
                    Text("Cadastrar cartão")
                    
                }.buttonStyle(MainButtonStyle())
            }
            
        }
        .offset(y: kGuardian.slide * 0.8).animation(.easeInOut(duration: 0.2)).onAppear { self.kGuardian.addObserver() }.onDisappear { self.kGuardian.removeObserver() }
    }
}

struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationScreen()
    }
}
