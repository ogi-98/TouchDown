//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Oğuz Kaya on 13.06.2021.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - Properties
    
    let category: Category
    
    
    //MARK: - Body
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
                
            }//: HStack
            .padding()
            .background(Color.white.cornerRadius(12.0))
            .background(
                RoundedRectangle(cornerRadius: 12.0, style: .circular)
                    .stroke(Color.gray,lineWidth: 1.0)
            )
        })//: Button
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
