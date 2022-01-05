//
//  MovieListView.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/14/21.
//

import SwiftUI

struct MovieListView: View {
    
    let movieViewModels:[MovieViewModel]
    
    var body: some View {
        List(self.movieViewModels, id: \.imdbId) { viewModel in
            NavigationLink(destination: MovieDetailScreen(imdbId: viewModel.imdbId)) {
                MovieCell(viewModel: viewModel)
            }
        }
    }
}
