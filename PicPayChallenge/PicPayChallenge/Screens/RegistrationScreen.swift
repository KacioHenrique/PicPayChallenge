//
//  RegistrationScreen.swift
//  PicPayChallenge
//
//  Created by Kacio on 18/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct RegistrationScreen: View {
    @State private var numCard:String = ""
    @State private var name:String = ""
    @State private var expiry:String = ""
    @State private var cvv = ""
    @State private var action: Int? = 0
    var body: some View {
        VStack{
            Spacer()
            Test(value: $numCard, TypeKeyBoard: .decimalPad, placeHoad: "Número do Cartão")
            Spacer()
            Test(value: $name, TypeKeyBoard: .namePhonePad, placeHoad: "Nome do titular")
            Spacer()
            HStack{
                Test(value: $name, TypeKeyBoard: .decimalPad, placeHoad: "Vencimento")
                Test(value: $name, TypeKeyBoard: .decimalPad, placeHoad: "CVV")
            }
            Spacer()
            VStack {
                NavigationLink(destination:ContentView() , tag: 1, selection: $action) {
                    EmptyView()
                }
                
                
                Button(action: {
                    self.action = 1
                }) {
                    Text("Salvar")
                    
                }.buttonStyle(MainButtonStyle())
               
            }
             Spacer()
        }
    }
}

struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationScreen()
    }
}
