//
//  Movie.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/12/21.
//

import UIKit


struct MovieResponse: Decodable {
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
}


struct Movie: Codable {
    let title: String
    let year: String
    let imdbId: String
    let type: String
    let poster:String

    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbId = "imdbID"
        case type = "Type"
        case poster = "Poster"
    }

}

