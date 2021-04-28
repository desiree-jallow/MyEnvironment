//
//  AppTheme.swift
//  MyEnvironment
//
//  Created by Desiree on 4/28/21.
//


import SwiftUI

protocol AppTheme {
    var primaryFont: Font { get set }
    var secondaryFont: Font { get set }
    var mainColor: Color { get set }
    var accentColor: Color { get set }
}

class Theme1: AppTheme {
    var accentColor: Color = Color.init(.lightGray)
    var primaryFont: Font = Font.custom("NotoSansMyanmar-Bold", size: 26)
    var secondaryFont: Font = Font.custom("NotoSansMyanmar-Light", size: 18)
    var mainColor: Color = Color.init(.darkGray)
}

class Theme2: AppTheme {
    var accentColor: Color = Color.init(.purple)
    var primaryFont: Font = Font.custom("PingFangHK-Medium", size: 26)
    var secondaryFont: Font = Font.custom("PingFangHK-UltraLight", size: 18)
    var mainColor: Color = Color.init(.blue)
}

fileprivate let availableThemes:[AppTheme] = [Theme1(), Theme2()]
class SelectedTheme: ObservableObject {
    @Published var theme: AppTheme = availableThemes[0]
    
    func switchThemes() {
        if let _ = theme as? Theme1 {
            theme = availableThemes[1]
        } else {
            theme = availableThemes[0]
        }
    }
}
