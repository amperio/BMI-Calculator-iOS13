//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Juan Navarro  on 2/9/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain {
    
    var bmi: BMImodel? // No se le hace aun instancia
    
    mutating func calculateIBM(weight: Float,height: Float) {
        let resultado = weight / pow(height, 2)
        if resultado < 18.5 {
            bmi = BMImodel(valor: resultado, mensaje: "Muy delgado", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if resultado < 24.9{
            bmi = BMImodel(valor: resultado, mensaje: "Esta Normal", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            bmi = BMImodel(valor: resultado, mensaje: "Estas OBESO", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMI() -> Float {
        return bmi?.valor ?? 0.00 // OPTIONAL CHAINING
    }
    
    func getColor() ->  UIColor{
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    func getMensaje() -> String {
        return bmi?.mensaje ?? "No hay datos"
    }
}
