//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Oğuz Kaya on 13.06.2021.
//

import SwiftUI

struct HeaderDetailView: View {

    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })//: VStack
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
