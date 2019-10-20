//
//  Test.swift
//  PicPayChallenge
//
//  Created by Kacio on 20/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI

struct Test: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ContentView()) {
                    Text("Show Detail View")
                }.navigationBarTitle("Navigation")
            }
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
