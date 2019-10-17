//
//  PeopleCell.swift
//  PicPayChallenge
//
//  Created by Kacio on 17/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct PeopleCell: View {
    var name:String
    var userName:String
    var imageUrl:String
    var body: some View {
        HStack{
            ImagePeopleCell(imageUrl: self.imageUrl)
            VStack{
                Text("\(self.userName)").font(.custom("SF UI Text;", size: 16)).multilineTextAlignment(.leading).frame(width: CGFloat(212), height:CGFloat(20) , alignment: .leading)
                Text("\(self.name)").font(.custom("SF UI Text;", size: 14)).multilineTextAlignment(.leading).frame(width: CGFloat(212), height:CGFloat(20) , alignment: .leading)
                    .foregroundColor(Color(#colorLiteral(red: 0.5567877293, green: 0.5568256378, blue: 0.5608755946, alpha: 1)))
            }
        }
    }
}

struct PeopleCell_Previews: PreviewProvider {
    static var previews: some View {
        PeopleCell(name: "Otávio", userName: "juliano.garcia", imageUrl: "https://randomuser.me/api/portraits/men/54.jpg")
    }
}
