//
//  PaymentScreenManeger.swift
//  PicPayChallenge
//
//  Created by Kacio on 23/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct PaymentScreenManeger: View {
    @State var isOn = false
    let people:PeopleModel
    var body: some View {
        ZStack{
            if(!self.isOn){
                PaymentScreen(isOn: self.$isOn, people: self.people)
            }else{
                RegistrationScreenManager()
            }
        }
    }
}

struct PaymentScreenManeger_Previews: PreviewProvider {
    static var previews: some View {
        PaymentScreenManeger(people:PeopleModel(id: 100, name: "Kacio Henrique", img: "bla", username: "@KacioReis"))
    }
}
