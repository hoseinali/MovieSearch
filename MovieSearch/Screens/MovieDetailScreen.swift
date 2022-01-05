//
//  MovieDetailScreen.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/26/21.
//

import SwiftUI

struct MovieDetailScreen: View {
    @ObservedObject private var movieDetailVM = MovieDetailViewModel()
    let imdbId: String

    var body: some View {
        VStack {
            if movieDetailVM.loadingState == .loading {
                LoadingView()
            } else if movieDetailVM.loadingState == .success {
                MovieDetailView(movieDetailVM: movieDetailVM)
            } else if movieDetailVM.loadingState == .failed {
                FailedView()
            }
        
        }
        .onAppear {
            movieDetailVM.getDetailByImdbId(imdbId: imdbId)
        }
    }
}

