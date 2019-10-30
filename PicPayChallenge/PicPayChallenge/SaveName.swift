//
//  SaveName.swift
//  PicPayChallenge
//
//  Created by Kacio Henrique Couto Batista on 24/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct SaveName: View {
    @State var name = ""
    //@State var show = false
    @ObservedObject var model = ReactiveModel()
    var body: some View {
        VStack{
            TextField("type your name ", text:$model.numberCard)
                Button(action: {
                    //self.model.userDefault.salveData(key: "NumberCard", data: self.model.numberCard)
                    //self.show.toggle()
                }, label: {
                    Text("salvar")
                })
            //if(self.show){
            Text(model.userDefault.getValue(.cardholderName)).foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
            //}
        }
    }
}

struct SaveName_Previews: PreviewProvider {
    static var previews: some View {
        SaveName()
    }
}
