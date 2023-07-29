//
//  ContentView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 28/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(uiColor: UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00))
            
            ScrollView {
                LazyVStack(alignment: .leading) {
                    HeaderView()
                    SearchView()
                    CategoriesList()
                    PopularList()
                    
                }
                .padding(.vertical, 100)
            }
        }
        .ignoresSafeArea()
    }
}

struct HeaderView: View {
    
    var body: some View {
        Group {
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

struct SearchView: View {
    
    @State var searchText = ""
    
    var body: some View {
        HStack(spacing: 16) {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Restaurents, Food...", text: $searchText)
                    .font(.system(size: 16))
            }
            .padding()
            .background(
                Color(.white)
            )
            .cornerRadius(20)
            
            ZStack {
                Button {
                    
                } label: {
                    Image("filters")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .background()
                        .padding()
                }
            }
            .background()
            .frame(width: 50, height: 50)
            .cornerRadius(20)
        }
        .padding(.horizontal, 24.0)
        .padding(.vertical, 16.0)
    }
}


struct CategoriesList: View {
    var body: some View {
        
        HStack {
            Text("Explore Categories")
                .font(.system(size: 18, weight: .medium))
            Spacer()
            Text("...")
                .font(.system(size: 18, weight: .medium))
            
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 24.0)
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHStack {
                CategoryItemView(selected: true)
                CategoryItemView(selected: false)
                CategoryItemView(selected: false)
                CategoryItemView(selected: false)
                CategoryItemView(selected: false)
                CategoryItemView(selected: false)
                CategoryItemView(selected: false)
                CategoryItemView(selected: false)
                CategoryItemView(selected: false)
                CategoryItemView(selected: false)
            }
        }
        .ignoresSafeArea()
    }
}


struct PopularList: View {
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
            PopularItemView(isFavourite: true)
            PopularItemView(isFavourite: false)
            PopularItemView(isFavourite: false)
            PopularItemView(isFavourite: false)
            PopularItemView(isFavourite: false)
            PopularItemView(isFavourite: false)
            PopularItemView(isFavourite: false)
            PopularItemView(isFavourite: false)
            PopularItemView(isFavourite: false)
            PopularItemView(isFavourite: false)
        }
    }
}


struct PopularItemView: View {
    
    let isFavourite: Bool
    
    var body: some View {
        ZStack {
            Color(.white)
            
            HStack(spacing: 24.0) {
                Image("pizza")
                    .resizable()
                    .frame(width: 100, height: 120)
                    
                
                VStack(spacing: 16.0) {
                    Text("5 Pepper")
                        .font(.system(size: 18.0))
                        .bold()
                    
                    Text("Mixed Pizza")
                        .font(.system(size: 14.0))
                    
                    HStack {
                        Text("€129")
                            .font(.system(size: 18.0))
                            .bold()
                        
                        Text("€169")
                            .font(.system(size: 14.0))
                            .strikethrough()
                            .foregroundColor(.gray)
                    }
                }
                
                Image(systemName: "heart")
                
            }
            .frame(height: 150)
        }
        .cornerRadius(45.0)
        .padding(.horizontal, 24.0)
        .padding(.bottom, 16.0)
        .shadow(color: .black.opacity(0.1), radius: 8, y: 4)
        
    }
}

struct CategoryItemView: View {
    
    let selected: Bool
    
    var body: some View {
        ZStack {
            if selected {
                Color(uiColor: UIColor(red: 0.97, green: 0.72, blue: 0.38, alpha: 1.00))
            } else {
                Color(.white)
            }
            
            VStack(spacing: 12) {
                Image("burger")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .padding(.horizontal, 14)
                    .padding(.vertical, 18.0)
                    .background(.white)
                    .cornerRadius(35)
                
                Text("Burger")
                    .font(.system(size: 14))
                    .bold()
            }
            .frame(width:85, height: 140)
        }
        .cornerRadius(40)
        .padding(.horizontal, 12.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
