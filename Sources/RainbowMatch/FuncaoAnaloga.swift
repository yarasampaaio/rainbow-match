//
//  File.swift
//  
//
//  Created by Yara Vitoria on 22/03/22.
//

import Foundation

// MARK: FUNCAO PARA DESCOBRIR A ANALOGA POSTERIOR

func analogaDepois (for color: Int) -> Int? {

    if let index = colors.firstIndex(of: color) {

        var analogaPosterior: Int

        let d = index + 1 

        if d <= 11 {
            analogaPosterior = colors[d]
        } else {
            analogaPosterior = colors[0+d-12]
        }

        return analogaPosterior
    }

    return nil

}

//MARK: FUNCAO PARA DESCOBRIR A ANALOGA ANTERIOR

func analogaAntes(for color: Int) -> Int? {

    if let index = colors.firstIndex(of: color) {

        var analogaAnterior: Int

        let d = index - 1

        if d >= 0 {
            analogaAnterior = colors[d]
        } else {
            analogaAnterior = colors[colors.count+d]
        }

        return analogaAnterior
    }

    return nil

}

    
    
    
    
    
    
    
    
    
    
    
