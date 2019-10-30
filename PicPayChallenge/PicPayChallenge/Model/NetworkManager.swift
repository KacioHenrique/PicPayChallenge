//
//  NetworkManager.swift
//  PicPayChallenge
//
//  Created by Kacio on 17/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import Foundation
import Combine
import SwiftUI
class NetworkManager:ObservableObject{
    var didChange = PassthroughSubject<NetworkManager,Never>()
    @Published var peoples = [PeopleModel](){
        didSet{
            didChange.send(self)
        }
    }
    
    init(){
        guard let url = URL(string: "http://careers.picpay.com/tests/mobdev/users") else{return}
        URLSession.shared.dataTask(with: url){ data,_,_ in
            guard let data = data else {return}
            let peoples = try! JSONDecoder().decode([PeopleModel].self, from: data)
            DispatchQueue.main.async {
                self.peoples = peoples
                print("json is completed")
            }
            
        }.resume()
    }
}
