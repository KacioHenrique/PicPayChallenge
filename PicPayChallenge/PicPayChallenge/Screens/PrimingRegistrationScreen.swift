//
//  RegistrationScreen.swift
//  PicPayChallenge
//
//  Created by Kacio on 18/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct PrimingRegistrationScreen: View {
    @Binding var isOn:Bool
    var body: some View {
            VStack{
                Spacer()
                Image("ilustration_creditcard")
                Text("Cadastre um cartão ").frame(width: CGFloat(280), height: CGFloat(64), alignment: .center).font(.custom("SF UI Text;", size: 28)).padding(.bottom, CGFloat(-30))
                Text("de crédito").frame(width: CGFloat(280), height: CGFloat(64), alignment: .center).font(.custom("SF UI Text;", size: 28))
                Text("Para fazer pagamentos para outras pessoas você precisa cadastrar um cartão de crédito pessoal.")
                    .multilineTextAlignment(.center)
                Spacer()
                Button(action: {
                    self.isOn.toggle()
                }) {
                    Text("Cadastrar cartão")
                }.buttonStyle(MainButtonStyle())
                Spacer()
            }.frame(width:CGFloat(320), alignment: .center)
    }
}

//struct PrimingRegistrationScreen_Previews: PreviewProvider {
//    static var previews: some View {
//       
//        PrimingRegistrationScreen()
//    }
//}
