//
//  CustomMainButton.swift
//  PicPayChallenge
//
//  Created by Kacio on 17/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct CustomMainButton: View {
    var contentButton:String
    init(_ content:String){
        self.contentButton = content
    }
    var body: some View {
        Button(action: {}) {
            Text(self.contentButton)
        }
        .buttonStyle(MainButtonStyle())
        
    }
}

struct MainButtonStyle: ButtonStyle {

  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
        .frame(width: CGFloat(296), height: CGFloat(48), alignment: .center)
        .foregroundColor(.white)
        .background(configuration.isPressed ? Color(#colorLiteral(red: 0.5602599382, green: 0.5717912912, blue: 0.6174288392, alpha: 1)) : Color(#colorLiteral(red: 0.06408599764, green: 0.7783879638, blue: 0.4347344339, alpha: 1)))
        .cornerRadius(100.0)
        .scaleEffect(configuration.isPressed ? 1.4 : 1)
        .animation(Animation.spring().speed(2))
        .font(.custom("SF UI Text;", size: 18))
    }

}




struct CustomMainButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomMainButton("Cadastrar cartão")
    }
}
