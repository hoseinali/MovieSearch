//
//  Rating.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/26/21.
//

import SwiftUI

struct Rating: View {
    
    @Binding var rating:Int?
    var size:Int

    
    private func starType( index: Int) -> String {
        if let rating = rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
    }
    
    var body: some View {
        HStack {
            ForEach(1...size, id: \.self) { index in
                Image(systemName: starType(index: index))
                    .foregroundColor(Color.orange)
                    .onTapGesture {
                        rating = index
                }
            }
        }
        
    }
}
