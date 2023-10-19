//
//  HomeHeaderView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Good Evening! Joao")
                .font(.system(size: 16))
            
            Text("Grab your")
                .font(.system(size: 32))
            
            Text("delicious meal!")
                .font(.system(size: 32))
                .bold()
        }
        .padding(.horizontal, 24.0)
    }
}

//https://api.npoint.io/318a2ccc371f5902a107

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
