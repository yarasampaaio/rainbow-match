//
//  File.swift
//  
//
//  Created by Yara Vitoria on 22/03/22.
//

import Foundation

func complementar (for color: Int) -> Int? {

    if let index = colors.firstIndex(of: color) {

        var complementar: Int

        let d = index + 6

        if d <= 11 {
            complementar = colors[d]
        } else {
            complementar = colors[0+d-12]
        }

        return complementar
    }

    return nil

}
