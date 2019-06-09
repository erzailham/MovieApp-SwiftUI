//
//  NowPlayingView.swift
//  MovieApp-SwiftUI
//
//  Created by Reza Ilham on 09/06/19.
//  Copyright © 2019 erzailham. All rights reserved.
//

import SwiftUI

struct NowPlayingView : View {
    
    var movies: [Movie]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Now Playing")
                .font(.headline)
                .padding(.leading)
            ScrollView {
                HStack(spacing: 10) {
                    HStack(spacing: 10) {
                        ForEach(self.movies.identified(by: \.title)) { movie in
                            NowPlayingItemView(movie: movie)
                        }
                    }
                }
            }
            .padding(.leading)
        }
    }
}

#if DEBUG
struct NowPlayingView_Previews : PreviewProvider {
    static var previews: some View {
        NowPlayingView(movies: Movie.fakes)
    }
}
#endif
