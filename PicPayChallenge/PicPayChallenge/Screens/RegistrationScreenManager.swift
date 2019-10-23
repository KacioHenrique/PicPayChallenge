//
//  RegistrationScreenManager.swift
//  PicPayChallenge
//
//  Created by Kacio on 23/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct RegistrationScreenManager: View {
    @State var isOn = false
    var body: some View {
        ZStack{
            if(!isOn){
                PrimingRegistrationScreen(isOn: $isOn)
            }
            else{
               RegistrationScreen()
            }
        }
       
    }
}

struct RegistrationScreenManager_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationScreenManager()
    }
}
