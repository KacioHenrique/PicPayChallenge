//
//  Test.swift
//  PicPayChallenge
//k
//  Created by Kacio on 20/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct Test: View {
    @Binding var value:String
    @State private var rect:CGRect = CGRect()
    @State private var edition:Bool = false
    let TypeKeyBoard:UIKeyboardType
    let placeHoad:String
    var body: some View {
        VStack{
            HStack{
                if(self.edition){
                    Text(self.placeHoad).foregroundColor(Color(#colorLiteral(red: 0.06408599764, green: 0.7783879638, blue: 0.4347344339, alpha: 1)))
                }
                Spacer()
            }
            ZStack {
                TextField(self.placeHoad, text: self.$value,onEditingChanged: {edit in
                    self.edition = edit
                    }).background(GeometryGetter(rect: self.$rect)).keyboardType(TypeKeyBoard)
                Rectangle().frame(height: 2).offset(x: 0, y:self.rect.height).foregroundColor(self.edition ? Color(#colorLiteral(red: 0.06408599764, green: 0.7783879638, blue: 0.4347344339, alpha: 1)) : Color(#colorLiteral(red: 0.5999328494, green: 0.6000387073, blue: 0.5999261737, alpha: 1)))
            }
        }.padding()
    }
}

//struct Test_Previews: PreviewProvider {
//    static var previews: some View {
//        Test(value: <"">, placeHoad:"num")
//    }
//}
