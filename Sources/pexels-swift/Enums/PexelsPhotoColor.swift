//
//  PexelsPhotoColor.swift
//
//
//  Created by Alex Nagy on 12.02.2022.
//

import Foundation

public enum PexelsPhotoBaseColor: String {
    case red = "red"
    case orange = "orange"
    case yellow = "yellow"
    case green = "green"
    case turquoise = "turquoise"
    case blue = "blue"
    case violet = "violet"
    case pink = "pink"
    case brown = "brown"
    case black = "black"
    case gray = "gray"
    case white = "white"
}

public enum PexelsPhotoColor {
    case base(base: PexelsPhotoBaseColor)
    case hex(hex: String)
}
