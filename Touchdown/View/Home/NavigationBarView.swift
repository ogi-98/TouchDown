//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Oğuz Kaya on 9.06.2021.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    @State var isLoadedCart : Bool = false
    
    
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })//: Button
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    if isLoadedCart {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 14, height: 14, alignment: .center)
                            .offset(x: 13.0, y: -10.0)
                    }
                    
                }
            })//: Button
            
            
            
        }//: HSTACK
    }
}

//MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
