//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Oğuz Kaya on 13.06.2021.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button(action: {
                feedback.impactOccurred()
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
        }//: HStack
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
