//
//  ContentView.swift
//  PicPayChallenge
//
//  Created by Kacio on 17/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI
import Combine
struct ContentView: View {
    @ObservedObject var networkManeger = NetworkManager.init()
    var body: some View {
        VStack{
            if self.networkManeger.peoples.isEmpty{
                Text("load ...")
            }
            else{
                List(self.networkManeger.peoples){ people in
                    PeopleCell(name: people.name, userName: people.username, imageUrl:people.img)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
