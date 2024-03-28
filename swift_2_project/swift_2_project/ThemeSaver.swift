//
//  ThemeSaver.swift
//  swift_2_project
//
//  Created by Артур on 28.03.2024.
//

import Foundation

final class ThemeSaver {
    
    static func putData() {
        let theme = Theme.currentTheme.type
        UserDefaults.standard.set(theme.rawValue, forKey: "theme")
    }
    
    static func getData() {
        let theme = UserDefaults.standard.string(forKey: "theme")
        let themeType = AllAppTheme(rawValue: theme ?? "white")
        switch themeType {
        case .white: Theme.currentTheme = WhiteTheme()
        case .cyan: Theme.currentTheme = CyanTheme()
        case .purple: Theme.currentTheme = PurpleTheme()
        default: Theme.currentTheme = WhiteTheme()
        }
    }
}
