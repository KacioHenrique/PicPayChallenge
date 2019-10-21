//
//  PayCard.swift
//  PicPayChallenge
//
//  Created by Kacio on 21/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
class CardPay:ObservableObject{
    @Published var numberCard = "" {
        didSet{
            self.isValid = self.checkIsValidate()
        }
    }
    @Published var isValid = false

    @Published var cardholderName = "" {
        didSet{
            isValid = self.checkIsValidate()
        }
    }
    @Published var expiry = ""{
        didSet{
            isValid = self.checkIsValidate()
        }
    }
    @Published var cvv = ""{
        didSet{
            isValid = self.checkIsValidate()
        }
    }
    func checkIsValidate()->Bool{
        if(self.numberCard != "" && self.cardholderName != "" && self.expiry != "" && self.cvv != ""){
            return true
        }
        return false
    }
}

