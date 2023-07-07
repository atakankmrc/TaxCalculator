//
//  PercentButtonView.swift
//  TaxCalculator
//
//  Created by Atakan Kömürcü on 6.07.2023.
//

import SwiftUI

struct PercentButtonView: View {
    
    var title: Double
    @Binding var percent: Double
    
    var body: some View {
        VStack {
            Button {
                percent = title
            } label: {
                Text("\(title, specifier: "%.0f")")
                    .foregroundColor(.black)
                    .font(.system(size: 27))
            }
            .padding(.bottom, -3)
            
            Rectangle()
                .fill(percent == title ? Color.blue : Color.gray)
                .frame(width: 50, height: percent == title ? 2 : 1, alignment: .center)

        }
    }
}

struct PercentButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PercentButtonView(title: 8, percent: .constant(8))
    }
}
