//
//  MovieItemView.swift
//  MovieApp-SwiftUI
//
//  Created by Reza Ilham on 09/06/19.
//  Copyright © 2019 erzailham. All rights reserved.
//

import SwiftUI

struct MovieItemView : View {
    
    var movie: Movie
    
    var body: some View {
        VStack {
            Image(movie.posterImageName)
                .resizable()
                .frame(width: 150, height: 200).cornerRadius(5)
                .shadow(radius: 10)
            VStack {
                Text(movie.title)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(movie.year)
                    .font(.subheadline)
            }.frame(width: 150)
        }
    }
}

#if DEBUG
struct MovieItemView_Previews : PreviewProvider {
    static var previews: some View {
        MovieItemView(movie: Movie.fake)
    }
}
#endif
