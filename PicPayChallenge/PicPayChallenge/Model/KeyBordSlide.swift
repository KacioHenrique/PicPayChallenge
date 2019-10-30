//
//  KeyBordSlide.swift
//  PicPayChallenge
//
//  Created by Kacio Henrique Couto Batista on 24/10/19.
//  Copyright © 2019 Kacio. All rights reserved.
//

import Foundation
import Combine
import SwiftUI
class KeyBordSlide:ObservableObject{
    @Published var slide:CGFloat = 0
    init() {
        self.addObserver()
    }
    func addObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardDidHide(notification:)), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    @objc func keyBoardWillShow(notification: Notification) {
        if let rect = notification.userInfo?["UIKeyboardFrameEndUserInfoKey"] as? CGRect {
            self.slide = rect.height
        }
    }
    
    @objc func keyBoardDidHide(notification: Notification) {
        self.slide = 0
    }
}

