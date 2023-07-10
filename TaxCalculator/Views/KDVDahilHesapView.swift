//
//  KDVDahilHesapView.swift
//  TaxCalculator
//
//  Created by Atakan Kömürcü on 7.07.2023.
//

import SwiftUI

struct KDVDahilHesapView: View {
    @State var amount: Double = 0.0
    @State var kdv: Double = 0.0
    @State var total: Double = 0.0
    
    @State var percent: Double = 8.0
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            
            Text("Tutar")
                .fontWeight(.medium)
                .kerning(1.2)
                .foregroundColor(.gray)
            
            
            TextField("0", value: $amount, formatter: formatter)
                .multilineTextAlignment(.center)
                .accentColor(.yellow)
                .keyboardType(.decimalPad)
                .font(.system(size: 80))
            
            
            HStack(spacing: 20) {
                PercentButtonView(title: 1, percent: $percent)
                PercentButtonView(title: 8, percent: $percent)
                PercentButtonView(title: 10, percent: $percent)
                PercentButtonView(title: 18, percent: $percent)
                PercentButtonView(title: 20, percent: $percent)
                // TODO: Fix the TextField max value
                //                PercentTextFieldView(title: 0, percent: $percent)
            }
            .padding(.bottom)
            
            
            Button {
                let result = KDVHaricHesap(amount: amount, percent: percent)
                self.kdv = result.kdv
                self.total = result.total
                // TODO: Hesaplama yapıldığında TextFielddaki değerin silinmemesi
                //                self.amount = 0
            } label: {
                Text("Hesapla")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
            }
            .background(.blue)
            .cornerRadius(15)
            .padding(.bottom)
            
            Divider()
            
            VStack {
                Text("KDV Dahil Tutar")
                    .font(.title3)
                    .padding(.bottom, 8)
                Text("\(total, specifier: "%.3f")")
                    .font(.system(size: 20))
            }
            .padding(.top, 30)
            .padding(.bottom)
            
            
            VStack {
                Text("KDV")
                    .font(.title3)
                    .padding(.bottom, 8)
                Text("\(kdv, specifier: "%.3f")")
                    .font(.system(size: 20))
            }
            
            Spacer(minLength: 0)
            Spacer(minLength: 0)
            
        }
        .navigationTitle("KDV Dahil")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {
            
        }, label: {
            Image(systemName: "info.circle")
        }))
    }
}

struct KDVDahilHesapView_Previews: PreviewProvider {
    static var previews: some View {
        KDVDahilHesapView()
    }
}
