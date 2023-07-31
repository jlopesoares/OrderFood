//
//  HomeSearchView.swift
//  OrderFood
//
//  Created by João Pedro Soares on 31/07/2023.
//

import SwiftUI

struct HomeSearchView: View {
    
    @State var searchText = ""
    @State var presentSheet: Bool = false
    
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
                    presentSheet.toggle()
                } label: {
                    Image("filters")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .background()
                        .padding()
                }
                .sheet(isPresented: $presentSheet) {
                    Text("This app was brought to you by Hacking with Swift")
                        .presentationDetents([.height(300)])
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

struct HomeSearchView_Previews: PreviewProvider {
    static var previews: some View {
        HomeSearchView()
    }
}
