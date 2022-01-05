//
//  MovieListViewModel.swift
//  MoviesApp
//
//  Created by Hossein Ali Alborzi on 12/12/21.
//


import SwiftUI

class MovieListViewModel: ViewModelBase {
    
    @Published var movies = [MovieViewModel]()
    let httpClient = HTTPClient()
    
    func serachByName(name: String) {
        self.loadingState = .loading
        httpClient.getMoviesBySerach(serach: name.trimmedAndEscaped()) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let movies):
                    guard let movies = movies else { return }
                    self.loadingState = .success
                    self.movies = movies.map(MovieViewModel.init)
                case .failure(let error):
                    self.loadingState = .failed
                    print(error)
                }
            }
        }
    }
}
