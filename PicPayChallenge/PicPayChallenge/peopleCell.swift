//
//  peopleCell.swift
//  PicPayChallenge
//
//  Created by Kacio on 17/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct peopleCell: View {
    var name:String
    var userName:String
    var userImagem:Image
    var body: some View {
        HStack{
            self.userImagem.resizable().frame(width: 52, height: 52, alignment: .center).clipShape(Circle())
            VStack{
                Text("@\(self.userName)").font(.custom("SF UI Text;", size: 16)).multilineTextAlignment(.leading).frame(width: CGFloat(212), height:CGFloat(20) , alignment: .leading)
                Text("\(self.name)").font(.custom("SF UI Text;", size: 14)).multilineTextAlignment(.leading).frame(width: CGFloat(212), height:CGFloat(20) , alignment: .leading)
                .foregroundColor(Color(#colorLiteral(red: 0.5567877293, green: 0.5568256378, blue: 0.5608755946, alpha: 1)))
            }
        }
    }
}

struct peopleCell_Previews: PreviewProvider {
    static var previews: some View {
        peopleCell(name: "Alice Romero", userName:"aliceromero", userImagem: Image("logo"))
    }
}
