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
            self.insertValue()
            self.changColor()
        }
    }
    @Published var colorChange = Color(#colorLiteral(red: 0.5602599382, green: 0.5717912912, blue: 0.6174288392, alpha: 1))
    @Published var isValido = false
    @Published var previousStringValue = "0,00"
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
    func insertValue(){
        if value.isEmpty{
            self.reInitTextPayment()
            return
        }
        if previousStringValue == self.value {
            return
        }
        
        var elements = self.value.reduce([]) { (arry, element) -> [Character] in
            var vet = arry
            vet.append(element)
            return vet
        }
        if elements[0] == "," {
            self.reInitTextPayment()
            return
        }
        let index = find(item: ",", array: elements)
        if(index == -1){
            self.reInitTextPayment()
            return
        }
        if((self.value.count-1) - index < 2){
            elements.append("0")
        }
        else if(self.previousStringValue.count < self.value.count){
            //insert R
            insertR(&elements)
        }
        else{
            //remove
            if(index > 1){
                elements.swapAt(index, index-1)
            }
        }
        self.previousStringValue = arryCharInString(elements)
        self.value = self.previousStringValue
    }
    func reInitTextPayment(){
        self.previousStringValue = "0,00"
        self.value = self.previousStringValue
    }
}
func insertR(_ string:inout [Character]){
    let index = find(item: ",", array: string)
    string.swapAt(index, index+1)
    if(string[0] == "0"){
        string.removeFirst()
    }
}
func find(item:Character,array:[Character])->Int{
    for i in 0...array.count-1{
        if item == array[i]{
            return i
        }
    }
    return -1
}
func arryCharInString(_ array:[Character])->String{
    var string = ""
    for i in array{
        string.append(i)
    }
    return string
}
func shiftRight(array: inout [Character]){
    for i in 0...array.count-2{
        //if(arry[i+1] != ","){
        array.swapAt(i, i+1)
        //}
    }
    
}
