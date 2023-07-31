//
//  HomePopularView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct HomePopularView: View {
    
    let items: [Food]
    
    var body: some View {
        
        HStack {
            Text("Most Popular")
                .font(.system(size: 18, weight: .medium))
            Spacer()
            Text("...")
                .font(.system(size: 18, weight: .medium))
            
        }
        .frame(maxWidth: .infinity)
        .padding(24.0)
      
        LazyVStack {
            ForEach(items, id: \.id) { food in
                PopularItemCellView(isFavourite: Bool.random(), food: food)
            }
        }
    }
}

struct HomePopularView_Previews: PreviewProvider {
    static var previews: some View {
        
        let foods: [Food] = [Food(name: "Big Mac",
                                         type: .burger,
                                         image: "",
                                         price: Price(currentPrice: 20))]
        
        HomePopularView(items: foods)
            .previewLayout(.fixed(width: 375, height: 50))
    }
}
