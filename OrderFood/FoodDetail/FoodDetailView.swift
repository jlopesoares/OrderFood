//
//  FoodDetailView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 03/08/2023.
//

import SwiftUI

struct FoodDetailView: View {
    
    let food: Food
    
    var body: some View {
        ZStack {
            
            Color.mainColor
            
            VStack {
                Rectangle()
                    .cornerRadius(50.0)
                    .frame(height: 450)
                    .foregroundColor(.mainBackgroundColor)
                    .overlay {
                        VStack {
                            FoodHeaderImageView(food: food)
                            if food.isPizza {
                                PizzaSizesButtons()
                            }
                            FoodDescriptionView(food: food)
                   
                        }
                        
                    }
                
                HeaderView(title: "Restaurante Detail")
                    .padding()
                
                PopularItemCellView(isFavourite: true, food: food)
                
                Spacer()
                
                ZStack {
                    Color.black
                    
                    Button {
                        print("order")
                    } label: {
                        Text("Order")
                            .font(.title3)
                            .bold()
                    }
                    .padding()
                }
                .frame(height: 75)
            }
        }
        .ignoresSafeArea()
    }
}

struct PizzaSizesButtons: View {
    
    let availableSizes = PizzaSizes.allCases
    
    var body: some View {
        HStack(spacing: 20) {
            
            ForEach(availableSizes, id: \.description) { size in
                Button(size.description) {
                    print("Quero o \(size.description)")
                }
                .frame(width: 50, height: 50)
                .background()
                .cornerRadius(20)
                .bold()
                .foregroundColor(.black)
                .shadow(color: .black.opacity(0.4), radius: 6, y: 3)
            }
            
        }
        .padding()
    }
}

struct FoodDescriptionView: View {
    
    let food: Food
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(food.name)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.largeTitle)
                .bold()
            
            Text("Mixed Pizza")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 18, weight: .medium))
            
            HStack {
                Text("\(food.price.currentPrice, specifier: "%.2f")")
                    .font(.largeTitle)
                    .bold()
                
                Text("\(food.price.oldPrice ?? 0.0, specifier: "%.2f")")
                    .bold()
                    .foregroundColor(.gray)
                    .strikethrough()
                Spacer()
            }
        }
        .padding()
    }
}

struct FoodHeaderImageView: View {
    
    let food: Food
    
    var body: some View {
        ZStack {
//            Circle()
//                .inset(by: -200)
//                .offset(y: -100)
//                .fill(.white.opacity(0.7))
//                .shadow(color: .black.opacity(0.1), radius: 20, y: -0)
            Image("pizza")
                .resizable()
        }
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView(food: Food.samplePizza)
    }
}
