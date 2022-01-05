//
//  MovieSearchApp.swift
//  MovieSearch
//
//  Created by Hossein Ali Alborzi on 1/5/22.
//

import SwiftUI

@main
struct MovieSearchApp: App {
    let movieListScreen = MovieListScreen()
    var body: some Scene {
        WindowGroup {
            movieListScreen
        }
    }
}
