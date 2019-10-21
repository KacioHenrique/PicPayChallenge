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
    @ObservedObject private var kGuardian = KeyboardGuardian(textFieldCount: 3)
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Test(value: $card.numberCard, showField: $kGuardian.showField, TypeKeyBoard: .namePhonePad, placeHoad: "Número do Cartão", row: 0).background(GeometryGetter(rect: $kGuardian.rects[0]))
                    //.offset(y: (-kGuardian.slide * 1)/2).animation(.easeInOut(duration: 1.0))
                Spacer()
                Test(value: $card.cardholderName, showField: $kGuardian.showField, TypeKeyBoard: .namePhonePad, placeHoad: "Nome do titular", row: 1).background(GeometryGetter(rect: $kGuardian.rects[1]))
                Spacer()
                HStack{
                    Test(value: $card.expiry, showField: $kGuardian.showField, TypeKeyBoard: .numbersAndPunctuation, placeHoad: "Vencimento", row: 2).background(GeometryGetter(rect: $kGuardian.rects[2]))
                   Test(value: $card.cvv, showField: $kGuardian.showField, TypeKeyBoard: .numbersAndPunctuation, placeHoad: "CVV", row: 2).background(GeometryGetter(rect: $kGuardian.rects[2]))
                }
                if(card.isValid){
                    Button(action: {
                               }) {
                                   Text("Cadastrar cartão")
                               }.buttonStyle(MainButtonStyle())
                }
               
            }
            .navigationBarTitle(Text("Cadastrar cartão"))
        }
        .offset(y: kGuardian.slide * 0.8).animation(.easeInOut(duration: 0.2)).onAppear { self.kGuardian.addObserver() }.onDisappear { self.kGuardian.removeObserver() }
    }
}

struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationScreen()
    }
}
