//
//  ManegerUserDefault.swift
//  PicPayChallenge
//
//  Created by Kacio Henrique Couto Batista on 24/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import Foundation
import Combine
class ManegerUserDefaultCard{
    let userDefault:UserDefaults?
    init(){
        userDefault = UserDefaults.standard
    }
    func salveData(key:CardComposition,data:String){
        self.userDefault?.set(data, forKey: key.rawValue)
    }
    func getValue(_ key:CardComposition)->String{
        if let value = self.userDefault?.string(forKey:key.rawValue){
            return value
        }
        return "Não Cadastrado"
    }
}
class ReactiveModel:ObservableObject{
    var userDefault = ManegerUserDefaultCard()
    @Published var numberCard = "" {
        didSet{
            self.userDefault.salveData(key: .cardholderName, data: numberCard)
        }
    }
}
