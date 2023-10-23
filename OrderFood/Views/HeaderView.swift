//
//  HeaderView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 23/10/2023.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 18, weight: .medium))
            
            Spacer()

        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 24.0)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Explore Categories")
    }
}
