//
//  StringColor.swift
//  PicPayChallenge
//
//  Created by Kacio on 20/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

public class MechanicalPaymentview:ObservableObject{
    @Published var value = "0,00"{
        didSet{
            self.changColor()
        }
    }
    @Published var colorChange = Color(#colorLiteral(red: 0.5602599382, green: 0.5717912912, blue: 0.6174288392, alpha: 1))
    @Published var isValido = false
    func changColor(){
        let newString = self.value.replacingOccurrences(of: ",", with: ".", options: .literal, range: nil)
        let cust = (newString as NSString).floatValue
        if cust > 0.00{
            self.isValido = true
            self.colorChange = Color(#colorLiteral(red: 0, green: 0.7864664197, blue: 0.4217334986, alpha: 1))
        }else{
            self.isValido = false
            self.colorChange = Color(#colorLiteral(red: 0.5602599382, green: 0.5717912912, blue: 0.6174288392, alpha: 1))
        }
    }
}
