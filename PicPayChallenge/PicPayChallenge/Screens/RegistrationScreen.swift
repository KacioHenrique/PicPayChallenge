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
        NavigationView{
            VStack{
                Spacer()
                TextField("Número do cartão", text: $numCard)
                    .keyboardType(.numberPad)
                Spacer()
                TextField("Nome do titular", text: $name)
                Spacer()
                HStack{
                    TextField("Vencimento", text: $expiry).keyboardType(.numberPad)
                    TextField("CVV", text: $cvv).keyboardType(.numberPad)
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
            }
            .navigationBarTitle(Text("Cadastrar cartão"))
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea([.top, .bottom])
        }
    }
}

struct RegistrationScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationScreen()
    }
}
