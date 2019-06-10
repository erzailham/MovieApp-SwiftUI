//
//  NowPlayingItemView.swift
//  MovieApp-SwiftUI
//
//  Created by Reza Ilham on 09/06/19.
//  Copyright © 2019 erzailham. All rights reserved.
//

import SwiftUI

struct NowPlayingItemView : View {
    var movie: Movie
    
    var body: some View {
        VStack {
            ZStack {
                Image(movie.posterImageName)
                    .resizable()
                    .frame(width: 100, height: 140)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.gray, lineWidth: 1))
                    .shadow(radius: 100)
                }
                .frame(width: 100, height: 100)
            VStack {
                Text(movie.title)
                    .font(.headline)
                    .lineLimit(2)
                Text(movie.year)
                    .font(.subheadline)
            }.frame(width: 100)
        }
    }
}

#if DEBUG
struct NowPlayingItemView_Previews : PreviewProvider {
    static var previews: some View {
        NowPlayingItemView(movie: Movie.fake)
    }
}
#endif
