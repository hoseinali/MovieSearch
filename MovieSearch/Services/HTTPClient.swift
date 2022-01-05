//
//  HTTPClient.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/12/21.
//

import UIKit

enum netWorkError: Error {
    case badUrl
    case noData
    case decodingError
}



class HTTPClient {
    
    func getMoviesBySerach(serach: String, completion: @escaping(Result<[Movie]?, netWorkError>) -> Void ) {
        guard let url = URL.forMovieBy(serach) else { return completion(.failure(.badUrl))}
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data ,error == nil  else {
               return completion(.failure(.noData))
            }
            guard let movieResponse = try? JSONDecoder().decode(MovieResponse.self, from: data) else {
                return completion(.failure(.decodingError))
            }
            completion(.success(movieResponse.movies))
        }.resume()
    }
    
    func getDetails(imdbId: String, completion: @escaping( Result<MovieDetail?, netWorkError>) -> Void ) {
        guard let url = URL.forMoviesByImdbId(imdbId) else { return completion(.failure(.badUrl))}
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else { return completion(.failure(.badUrl))}
            guard let movieDetails = try? JSONDecoder().decode(MovieDetail.self, from: data) else { return completion(.failure(.decodingError))}
            completion(.success(movieDetails))
        }.resume()
    }

}
