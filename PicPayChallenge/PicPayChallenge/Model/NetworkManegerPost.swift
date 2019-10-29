//
//  NetworkManegerPost.swift
//  PicPayChallenge
//
//  Created by Kacio Henrique Couto Batista on 29/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import Foundation
import SwiftUI
import Combine
class NetworkManegerPost:ObservableObject{
    let url:String
    let trasation:Transiation
    @Published var status:Bool = false
    init(url:String,trasation:Transiation){
        self.url = url
        self.trasation = trasation
        makePost(trasiation: trasation, url: url)
    }
    func makePost(trasiation:Transiation,url:String){

        let encoder = JSONEncoder()
        encoder.outputFormatting = .withoutEscapingSlashes
        do {
            if let jsonData = try? encoder.encode(trasiation){
                print(trasiation)
                postRequest(url: url, data: jsonData)
            }
        } catch {
            print("erro em json to data")
        }
    }
    func postRequest(url:String,data:Data){
        guard let urlDestination = URL(string: url)  else {
            print("erro na contrução da url")
            return
        }
        let request = NSMutableURLRequest(url: urlDestination)
        request.httpMethod = "POST"
        request.httpBody = data
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        guard let rq = request as?  URLRequest else {
            print("deu ruim no URl")
            return
        }
        URLSession.shared.dataTask(with:rq){
            (data,request,error) in
            do{
                if let data = data{
                    let decode = try! JSONDecoder().decode(FinalResut.self, from: data)
                    DispatchQueue.main.async {
                        if decode.transaction.success{
                            self.status = true
                        }else{
                            self.status = false
                        }
                        
                    }
                }
                else{
                    print("sem Resposta")
                    return
                }
            } catch {
                print("erro na comonicação")
            }
        }.resume()
    }
    
}

