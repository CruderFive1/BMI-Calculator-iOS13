//
//  CalculaterBrain.swift
//  BMI Calculator
//
//  Created by Adrian Senften on 26.01.23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculaterBrain {
    
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.1316359639, green: 0.4497277737, blue: 0.6829016805, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fidel", color: #colorLiteral(red: 0.3355674744, green: 0.672062397, blue: 0.5062201023, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat les pies", color: #colorLiteral(red: 0.7209988236, green: 0.1870149076, blue: 0.2221619189, alpha: 1))
        }
        
        
        
        }
    
    func getBmiValue() -> String {
        
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
        
    }
    
    func getAdvice() -> String {
        let adivce = bmi?.advice ?? "Error"
        return adivce
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color ?? #colorLiteral(red: 1, green: 0.870660007, blue: 0.8267435431, alpha: 0.8470588235)
        return color
    }
}

