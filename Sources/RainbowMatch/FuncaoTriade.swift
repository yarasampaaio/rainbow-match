//
//  File.swift
//  
//
//  Created by Yara Vitoria on 22/03/22.
//

import Foundation


//FUNCAO PARA DESCOBRIR A TRIADE ANTERIOR

func triadeAnterior(for color: Int) -> Int? {

    if let index = colors.firstIndex(of: color) {

        var triadeAnterior: Int

        let d = index - 4

        if d >= 0 {
            triadeAnterior = colors[d]
        } else {
            triadeAnterior = colors[colors.count+d]
        }

        return triadeAnterior
    }

    return nil

}

//FUNCAO PARA DESCOBRIR A TRIADE POSTERIOR


func triadePosterior(for color: Int) -> Int? {
    
    let colors = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    
    if let index = colors.firstIndex(of: color) {
        
        var triadePosterior: Int
        
        let d = index + 4
        if d <= 11 {
            triadePosterior = colors[d]
        } else {
            triadePosterior = colors[0+d-12]
        }
        
        return triadePosterior
    }
    
    return nil
    
}

