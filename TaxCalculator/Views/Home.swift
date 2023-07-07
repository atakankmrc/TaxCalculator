//
//  Home.swift
//  TaxCalculator
//
//  Created by Atakan Kömürcü on 6.07.2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                KDVDahilHesapView()
            } label: {
                Text("KDV Dahil")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            NavigationLink {
                KDVHaricHesapView()
            } label: {
                Text("KDV Hariç")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(10)
            }


        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
