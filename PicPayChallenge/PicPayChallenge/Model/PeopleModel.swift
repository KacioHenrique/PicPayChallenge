//
//  PeopleModel.swift
//  PicPayChallenge
//
//  Created by Kacio on 17/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
struct PeopleModel:Identifiable,Decodable{
    let id:Int
    let name:String
    let img:String
    let username:String
}
