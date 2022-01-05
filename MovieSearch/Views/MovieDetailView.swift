//
//  MovieDetailView.swift
//  MovieSerach
//
//  Created by Hossein Ali Alborzi on 12/26/21.
//

import SwiftUI

struct MovieDetailView: View {
    
    let movieDetailVM: MovieDetailViewModel
    
    var body: some View {
        ScrollView {

        VStack {
            URLImage(url: movieDetailVM.poster)
                .cornerRadius(15)
            Text(movieDetailVM.title)
                .font(.title)
            Text(movieDetailVM.plot)
            Text("Director").fontWeight(.bold)
            Text(movieDetailVM.director)
            HStack {
                Rating(rating: .constant(movieDetailVM.rating), size: 10)
                Text("\(movieDetailVM.rating)/10")
            }.padding(.top, 10)
            
            Spacer()
        }
        .padding()
        .navigationBarTitle(self.movieDetailVM.title)        
    }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let movieDetail = MovieDetail(title: "Batman Begins", year: "1992", rated: "PG-13", plot: "After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.", director: "Christopher Nolan", actors: "", imdbRating: "4.8", poster: "https://m.media-amazon.com/images/M/MV5BZmUwNGU2ZmItMmRiNC00MjhlLTg5YWUtODMyNzkxODYzMmZlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SX300.jpg", imdbId: "345fgD")
        
       return MovieDetailView(movieDetailVM: MovieDetailViewModel(movieDetail: movieDetail))
        .embedNavigationView()
        
    }
}
