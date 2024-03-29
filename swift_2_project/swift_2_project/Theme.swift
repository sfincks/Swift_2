//
//  Theme.swift
//  swift_2_project
//
//  Created by Артур on 28.03.2024.
//

import Foundation
import UIKit

enum AllAppTheme: String {
    case white
    case cyan
    case purple
}

protocol AppTheme {
    var backgroundColor: UIColor { get }
    var textColor: UIColor { get }
    var subtitleTextColor: UIColor  { get }
    var type: AllAppTheme { get }
}

final class Theme {
    
    static var currentTheme: AppTheme = WhiteTheme()
}

final class WhiteTheme: AppTheme {
    var backgroundColor: UIColor = .white
    var textColor: UIColor = .black
    var type: AllAppTheme = .white
}

final class CyanTheme: AppTheme {
    var backgroundColor: UIColor = UIColor(red: 0, green: 255, blue: 255, alpha: 1)
    var textColor: UIColor  = .yellow
    var type: AllAppTheme = .cyan
}

final class PurpleTheme: AppTheme {
    var backgroundColor: UIColor = UIColor(red: 255, green: 0, blue: 255, alpha: 1)
    var textColor: UIColor  = .green
    var type: AllAppTheme = .purple
}

extension AppTheme {
    var subtitleTextColor: UIColor {
        .gray
    }
}

