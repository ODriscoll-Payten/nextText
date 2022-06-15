//
//  UserDefaultExtension.swift
//  Text Adventure
//
//  Created by Katy Dunn on 6/15/22.
//

import Foundation
extension UserDefaults{
    var isShowingTutorial:Bool{
        get {
            bool(forKey: #function)
        } set {
            setValue(newValue, forKey: #function)
        }
    }
}
