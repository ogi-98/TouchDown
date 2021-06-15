//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Oğuz Kaya on 13.06.2021.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    @State private var counter: Int = 0
    private let hapticImpact = UIImpactFeedbackGenerator(style: .soft)
    private let hapticImpactMedium = UIImpactFeedbackGenerator(style: .medium)
    private let feedbackgenerator = UINotificationFeedbackGenerator()
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            
            Button(action: {
                if counter > 0 {
                    counter -= 1
                    hapticImpact.impactOccurred()
                }else{
                    feedbackgenerator.notificationOccurred(.warning)
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                    hapticImpact.impactOccurred()
                }else{
                    feedbackgenerator.notificationOccurred(.warning)
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                hapticImpactMedium.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
            
            
        })//: HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
