//
//  PaymentTextField.swift
//  PicPayChallenge
//
//  Created by Kacio on 19/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct PaymentTextField: View {
    
    @ObservedObject var text:MechanicalPaymentview
    var body: some View {
        HStack{
            Text("R$").font(.custom("SF UI Text;", size: 18))
            TextField(text.value, text: $text.value).font(.custom("SF UI Text;", size: 54)).keyboardType(.asciiCapableNumberPad)
        }.foregroundColor(self.text.colorChange).padding(.leading, 100)
    }
}
#if DEBUG
struct PaymentTextField_Previews: PreviewProvider {
    static var previews: some View {
        PaymentTextField(text: MechanicalPaymentview())
    }
}
#endif
