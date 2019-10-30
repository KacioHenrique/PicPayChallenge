//
//  GeometryGetter.swift
//  PicPayChallenge
//
//  Created by Kacio on 21/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import SwiftUI
struct GeometryGetter: View {
    @Binding var rect: CGRect

    var body: some View {
        GeometryReader { geometry in
            Group { () -> AnyView in
                DispatchQueue.main.async {
                    self.rect = geometry.frame(in: .global)
                }

                return AnyView(Color.clear)
            }
        }
    }
}
