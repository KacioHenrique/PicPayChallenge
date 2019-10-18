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
    @State private var searchQuery: String = ""
    var body: some View {
        NavigationView{
            VStack{
                if self.networkManeger.peoples.isEmpty{
                    
                    Text("load ...")
                }
                else{
                    List{
                        Section(header: SearchBar(text: self.$searchQuery)){
                            ForEach(self.networkManeger.peoples.filter({
                                self.searchQuery.isEmpty ? true : "\($0)".contains(self.searchQuery)
                            })){ people
                                in
                                HStack {
                                      PeopleCell(name: people.name, userName: people.username, imageUrl:people.img)
                                    NavigationLink(destination: PrimingRegistrationScreen()) {
                                        EmptyView()
                                    }
                                }
                            }
                        }
                        
                    }
                }
            }
            .navigationBarTitle("Contatos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
