//
//  TransactionModel.swift
//  PicPayChallenge
//
//  Created by Kacio Henrique Couto Batista on 29/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import Foundation
struct TransactionResut:Decodable{
    var id:Int
    var timestamp:Int
    var value:Float
    var destinationUser:PeopleModel
    var success:Bool
    var status:String
    enum CodingKeys: String, CodingKey {
        case id
        case timestamp
        case value
        case destinationUser = "destination_user"
        case success
        case status
    }
}
struct FinalResut:Decodable{
    var transaction:TransactionResut
}
struct Transiation:Codable
{
    var cardNumber:String
    var cvv:Int
    var value:Double
    var expiryDate:String
    var destinationUserId:Int
    enum CodingKeys: String, CodingKey {
        case cardNumber = "card_number"
        case expiryDate = "expiry_date"
        case destinationUserId = "destination_user_id"
        case cvv
        case value
    }
}
