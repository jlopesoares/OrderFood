//
//  FoodDetailView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 03/08/2023.
//

import SwiftUI

struct FoodDetailView: View {
    var body: some View {
        ZStack {

            Color.mainColor
            
            VStack {
                Rectangle()
                    .cornerRadius(40.0)
                    .frame(height: 550)
                    .foregroundColor(.mainBackgroundColor)
                    .overlay {
                        VStack {
                            FoodHeaderImageView()
                            PizzaSizesButtons()
                            FoodDescriptionView()
                        }
                    }
                
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

struct PizzaSizesButtons: View {
    var body: some View {
        HStack(spacing: 20) {
            
            Button("S") {
                print("Quero o S")
            }
            .frame(width: 50, height: 50)
            .background()
            .cornerRadius(20)
            .bold()
            .foregroundColor(.black)
            .shadow(color: .black.opacity(0.4), radius: 6, y: 3)
            
            Button("M") {
                print("Quero o M")
            }
            .frame(width: 50, height: 50)
            .background()
            .cornerRadius(20)
            .bold()
            .foregroundColor(.black)
            .shadow(color: .black.opacity(0.4), radius: 6, y: 3)
            .offset(y: 8)
            
            Button("L") {
                print("Quero o L")
            }
            .frame(width: 50, height: 50)
            .background()
            .cornerRadius(20)
            .bold()
            .foregroundColor(.black)
            .shadow(color: .black.opacity(0.4), radius: 6, y: 3)
            
            
        }
        .padding()
    }
}

struct FoodDescriptionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("5 Pepper")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.largeTitle)
                .bold()
            
            Text("Mixed Pizza")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 18, weight: .medium))
        }
        .padding()
        
        HStack {
            Text("$129")
                .font(.largeTitle)
                .bold()
            
            Text("$169")
                .bold()
                .foregroundColor(.gray)
                .strikethrough()
            Spacer()
        }
        .padding()
    }
}

struct FoodHeaderImageView: View {
    var body: some View {
        ZStack {
            Circle()
                .inset(by: -200)
                .offset(y: -150)
                .fill(.white)
                .shadow(color: .black.opacity(0.1), radius: 2, y: -10)
            Image("pizza")
                .resizable()
        }
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView()
    }
}
