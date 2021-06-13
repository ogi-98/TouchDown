//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Oğuz Kaya on 13.06.2021.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - Properties
    
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(header: SectionView(), footer: SectionView(rotateClockWise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            })//: LazyHGrid
            .frame(minHeight: 130, idealHeight: 140, maxHeight: 150)
            .padding(.horizontal,15)
            .padding(.vertical,10)

        })//: ScrollView
    }
}

//MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
