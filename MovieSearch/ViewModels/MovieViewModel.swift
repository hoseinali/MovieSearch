//
//  MovieViewModel.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/13/21.
//

import Foundation


struct MovieViewModel {
    
    let movie: Movie
    
    var title: String {
        movie.title
    }
    
    var imdbId: String {
        movie.imdbId
    }
    
    var year: String {
        movie.year
    }
    
    var poster: String {
        movie.poster
    }
    
    var type: String {
        movie.type
    }
}

