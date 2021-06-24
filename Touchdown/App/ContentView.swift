//
//  ContentView.swift
//  Touchdown
//
//  Created by Oğuz Kaya on 9.06.2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing:0) {
                    NavigationBarView(isLoadedCart: true)
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top , UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.1), radius: 5.0, x: 0.0, y: 5.0)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .padding(.vertical,20)
                                .frame(minHeight: 150, idealHeight: 250, maxHeight: .infinity, alignment: .center)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeIn) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }//: LOOP
                            })//: LAZYVGRID
                            .padding()
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }//: Vstack
                    })//: ScrollView
                    
                    
                }//: Vstack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }//: Zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
