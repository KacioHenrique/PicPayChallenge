//
//  ImageLoader.swift
//  PicPayChallenge
//
//  Created by Kacio on 17/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ImageLoader: ObservableObject {
    var didChange = PassthroughSubject<Data,Never>()
    @Published var data = Data(){
        didSet{
            didChange.send(data)
        }
    }
    init(imageUrl:String){
        guard let url = URL(string: imageUrl) else {return}
        URLSession.shared.dataTask(with: url){data,_,_ in
            guard let data = data else {return}
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }
}
