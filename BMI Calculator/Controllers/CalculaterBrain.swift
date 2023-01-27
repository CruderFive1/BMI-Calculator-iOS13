//
//  CalculaterBrain.swift
//  BMI Calculator
//
//  Created by Adrian Senften on 26.01.23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculaterBrain {
    
    var bmi: Float?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        bmi = weight / (height * height)
        }
    
    func getBmiValue() -> String {
        
        let bmiValue = String(format: "%.1f", bmi ?? 0.0)
        return bmiValue
        
    }
}
