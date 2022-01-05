//
//  MovieCell.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/14/21.
//

import SwiftUI

struct MovieCell: View {
    let viewModel: MovieViewModel
    
    var body: some View {
        HStack(alignment:.top) {
            URLImage(url: viewModel.poster)
            .frame(width: 100, height: 120)
            .cornerRadius(6)
            VStack(alignment: .leading) {
                Text(viewModel.title)
                .font(.headline)
                Text(viewModel.year)
                .opacity(0.5)
                .padding(.top, 10)
            }.padding(5)
            Spacer()
        }.contentShape(Rectangle())
    }
}

