//
//  Extensions.swift
//  TaxCalculator
//
//  Created by Atakan Kömürcü on 4.07.2023.
//

import Foundation
import SwiftUI


func KDVDahilHesap(amount: Double, percent: Double) -> Double {
    let result = amount / (1 + (percent / 100))
    return Double(result)
}

let formatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.zeroSymbol = ""
    return formatter
}()

let formatterTF: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal
    formatter.maximum = 100
    formatter.maximumIntegerDigits = 2
    formatter.zeroSymbol = ""
    return formatter
}()

extension Binding where Value == String {
    func max(_ limit: Int) -> Self {
        if self.wrappedValue.count > limit {
            DispatchQueue.main.async {
                self.wrappedValue = String(self.wrappedValue.dropLast())
            }
        }
        return self
    }
}
