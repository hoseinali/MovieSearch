//
//  MovieDetailsViewModel.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/25/21.
//

import Foundation

class MovieDetailViewModel: ViewModelBase {
    @Published var movieDetail: MovieDetail?
    let httpClient = HTTPClient()
    
    init(movieDetail: MovieDetail? = nil ) {
        self.movieDetail = movieDetail
    }
    
    func getDetailByImdbId(imdbId: String) {
        httpClient.getDetails(imdbId: imdbId) { result in
            switch result {
            case .success(let movieDetail):
                DispatchQueue.main.async {
                    self.movieDetail = movieDetail
                    self.loadingState = .success
                }
            case .failure(let error):
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.loadingState = .failed
                }
            }
            
        }
    }
    var title: String {
        movieDetail?.title ?? ""
    }
    var poster: String {
        self.movieDetail?.poster ?? ""
    }
    
    var plot: String {
        self.movieDetail?.plot ?? ""
    }
    
    var rating: Int {
        get {
            let ratingAsDouble = Double(self.movieDetail?.imdbRating ?? "0.0")
            return Int(ceil(ratingAsDouble ?? 0.0))
        }
    }
    
    var director: String {
        self.movieDetail?.director ?? ""
    }
    
}
