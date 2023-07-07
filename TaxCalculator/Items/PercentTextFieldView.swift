//
//  PercentTextFieldView.swift
//  TaxCalculator
//
//  Created by Atakan Kömürcü on 6.07.2023.
//

import SwiftUI

struct PercentTextFieldView: View {
    
    var title: Double
    @Binding var percent: Double
    
    var body: some View {
        VStack {
            TextField("\(percent, specifier: "%.0f")", value: $percent, formatter: formatterTF, onEditingChanged: { _ in
                if percent >= 100 {
                    self.percent = 100
                }
            })
                .font(.system(size: 27))
                .multilineTextAlignment(.center)
                .frame(width: 50)
                .padding(.bottom, -3)
            
            Rectangle()
                .fill(percent == title ? Color.blue : Color.gray)
                .frame(width: 50, height: percent == title ? 2 : 1, alignment: .center)

        }
    }
}

struct PercentTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        PercentTextFieldView(title: 0, percent: .constant(0.0))
    }
}
