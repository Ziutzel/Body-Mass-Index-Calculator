//
//  CalculadoraManager.swift
//  Calculadora de Índice de masa corporal
//
//  Created by Ziutzel grajales on 15/03/23.
//

import Foundation
import UIKit

struct CalculadoraManager {
    
    
    var imc : IMC?
    
    mutating func calcularIMC (Peso : Double , Altura : Double) {
        
        let valorIMC = Peso / (Altura*Altura)
        
        if valorIMC < 18.5 {
            imc = IMC(valor: Float(valorIMC), aviso: "Necesitas alimentarte mejor, acude con un especialista", color: .yellow)
            
        } else if valorIMC < 24.9 {
            imc = IMC(valor: Float(valorIMC), aviso: "Estas en un rango normal, muy bien sólo no dejes de alimentarte bien", color: .green)
        } else if valorIMC < 29.9 {
            imc = IMC(valor: Float(valorIMC), aviso: "Tienes sobrepeso, acude con un especialista", color: .gray)
        } else {
            imc = IMC(valor: Float(valorIMC), aviso: "Ve al medico, tienes obesidad", color: .red)
        }
    }
    
    func retornavalorIMC () -> String {
        let imcCon1Decimal = String( format: "%.1f", imc?.valor ?? 0.0)
        return imcCon1Decimal
    }
    
    func returnRecomendaciones () -> String {
        return imc?.aviso ?? "No hay datos!"
        
    }
    
    func retornarColor () -> UIColor {
        return imc?.color ?? .magenta
    }
}
