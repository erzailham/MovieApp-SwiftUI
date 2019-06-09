//
//  MoviesView.swift
//  MovieApp-SwiftUI
//
//  Created by Reza Ilham on 09/06/19.
//  Copyright © 2019 erzailham. All rights reserved.
//

import SwiftUI

struct MoviesView : View {
    
    var categoryName: String
    var movies: [Movie]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text(categoryName)
                .font(.headline)
                .padding(.leading)
            ScrollView {
                HStack(spacing: 10) {
                    ForEach(self.movies.identified(by: \.title)) { movie in
                        MovieItemView(movie: movie)
                    }
                }
            }
            .padding(.leading)
        }
    }
}

#if DEBUG
struct MoviesView_Previews : PreviewProvider {
    static var previews: some View {
        MoviesView(categoryName: "Popular", movies: Movie.fakes)
    }
}
#endif
