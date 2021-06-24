//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Oğuz Kaya on 13.06.2021.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop: Shop

    var body: some View {
        Button(action: {
            feedbackgenerator.notificationOccurred(.success)
        }, label: {
            Spacer()
            
            Text("Add to cart".uppercased())
                .font(.system(.title2,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
            
        })
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                  green: shop.selectedProduct?.green ?? sampleProduct.green,
                  blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
