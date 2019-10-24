//
//  ReceiptScreenDisplayText.swift
//  PicPayChallenge
//
//  Created by Kacio Henrique Couto Batista on 24/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct ReceiptScreenDisplayText: View {
    let text:String
    let value:String
    var labelSize:CGFloat = 13
    init(size:CGFloat,text:String,value:String){
        self.labelSize = size
        self.text = text
        self.value = value
    }
    var body: some View {
        VStack{
            Rectangle().frame(height: 2).offset(x: 0, y:0).foregroundColor(Color(#colorLiteral(red: 0.2382220626, green: 0.2658217549, blue: 0.3156953454, alpha: 1)))
            HStack{
                Text(self.text).font(.custom("SF UI Text;", size: self.labelSize))
                Spacer()
                Text(self.value).font(.custom("SF UI Text;", size: self.labelSize))
            }
        }.padding()
        
    }
}

struct ReceiptScreenDisplayText_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptScreenDisplayText(size: 13, text: "Cartão Master 1234", value:"16,90")
    }
}
