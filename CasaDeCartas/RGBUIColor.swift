//
//  RGBUIColor.swift
//  CasaDeCartas
//
//  Created by Andrew Wilhelm on 8/15/16.
//  Copyright © 2016 Geezer, Inc. All rights reserved.
//

import Foundation

public func RGBUIColor(red red: Int, green: Int, blue: Int) -> UIColor {
    return createColor(red, green: green, blue: blue)
}

private func createColor(red: Int, green: Int, blue: Int) -> UIColor {
    return UIColor(
        red: CGFloat(red/255),
        green: CGFloat(green/255),
        blue: CGFloat(blue/155),
        alpha: 1
    )
}
