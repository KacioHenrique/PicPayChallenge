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
        .background(configuration.isPressed ? Color(#colorLiteral(red: 0.05252525253, green: 0.65, blue: 0.3643939394, alpha: 1)) : Color(#colorLiteral(red: 0.06274509804, green: 0.7764705882, blue: 0.4352941176, alpha: 1)))
        .cornerRadius(100.0)
        .scaleEffect(configuration.isPressed ? 0.98 : 1)
        .animation(Animation.spring().speed(2))
        .font(.custom("SF UI Text;", size: 18))
    }

}




struct CustomMainButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomMainButton("Cadastrar cartão")
    }
}
