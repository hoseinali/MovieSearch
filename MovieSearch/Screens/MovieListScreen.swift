//
//  MovieListScreen.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/13/21.
//

import SwiftUI

struct MovieListScreen: View {
    @State private var movieSerach: String = ""
    
    @ObservedObject private var movieListVM: MovieListViewModel
    
    init() {
        self.movieListVM = MovieListViewModel()
        
    }
    
    var body: some View {
        VStack {
            TextField.init("Serach", text: $movieSerach, onEditingChanged: { _ in},onCommit: {
                self.movieListVM.serachByName(name: movieSerach)
            })
                .textFieldStyle(.roundedBorder)
                Spacer()
                .navigationBarTitle("Movies")
            if self.movieListVM.loadingState == .success {
                MovieListView(movieViewModels: movieListVM.movies)
            } else if self.movieListVM.loadingState == .failed {
                FailedView()
            } else if self.movieListVM.loadingState == .loading {
                LoadingView()
            }

        }.padding().embedNavigationView()
    }
   
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
