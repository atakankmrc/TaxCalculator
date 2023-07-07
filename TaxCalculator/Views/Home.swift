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
                ContentView()
            } label: {
                Text("KDV Dahil")
            }
            
            NavigationLink {
                
            } label: {
                Text("KDV Hariç")
            }


        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
