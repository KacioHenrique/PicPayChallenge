//
//  PeopleCellPaymentScreen.swift
//  PicPayChallenge
//
//  Created by Kacio on 19/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct PeopleCellPaymentScreen: View {
    var peopleModel:PeopleModel
    let size:CGFloat = 0
    init(data people:PeopleModel){
        peopleModel = people
    }
    var body: some View {
        VStack{
            ImagePeopleCell(imageUrl: self.peopleModel.img)
            Text(self.peopleModel.username)
        }
        
    }
}

struct PeopleCellPaymentScreen_Previews: PreviewProvider {
    static var previews: some View {
        PeopleCellPaymentScreen(data: PeopleModel(id: 100, name: "Kacio Henrique", img: "bla", username: "KacioReis"))
    }
}
