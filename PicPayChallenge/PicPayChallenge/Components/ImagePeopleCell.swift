//
//  ImagePeopleCell.swift
//  PicPayChallenge
//
//  Created by Kacio on 17/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct ImagePeopleCell: View {
    @ObservedObject var imageLoader:ImageLoader
    var size:CGFloat = 52
    init(imageUrl:String,size:CGFloat){
        imageLoader = ImageLoader(imageUrl: imageUrl)
        self.size = 100
    }
    init(imageUrl:String){
        imageLoader = ImageLoader(imageUrl: imageUrl)
    }
    var body: some View {
        Image(uiImage: (self.imageLoader.data.isEmpty ? UIImage(named:"logo")! : UIImage(data:self.imageLoader.data)!)).resizable().frame(width: self.size, height: self.size, alignment: .center).clipShape(Circle())
    }
}

struct ImagePeopleCell_Previews: PreviewProvider {
    static var previews: some View {
        //ImagePeopleCell(imageUrl: "https://randomuser.me/api/portraits/men/54.jpg")
        ImagePeopleCell(imageUrl: "https://randomuser.me/api/portraits/men/54.jpg",size:100)
    }
}
