//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Oğuz Kaya on 13.06.2021.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5, content: {
            //Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            //header
            HeaderDetailView()
                .padding(.horizontal)
            
            //detailtoppart
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1.0)
            
            //detailbottompart
            VStack(alignment: .center, spacing: 0, content: {
                //ratings + sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                
                //descriptions
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                })//: Scroll
                
                // quantity + favoraties
                QuantityFavouriteDetailView()
                    .padding(.vertical,10)
                // add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            })//: Vstack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -100)
            )
            
        })//: vstack
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                  green: shop.selectedProduct?.green ?? sampleProduct.green,
                  blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}

//MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
