//
//  URL+Extension.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/12/21.
//

import Foundation

extension URL {
    
    static func forMovieBy(_ name:String) -> URL? {
        return URL(string: "http://www.omdbapi.com/?s=\(name)&apikey=\(Constants.API_KEY)")
    }
    static func forMoviesByImdbId(_ imdbId: String) -> URL? {
        return URL(string: "http://www.omdbapi.com/?i=\(imdbId)&apikey=\(Constants.API_KEY)")
    }
    
}
