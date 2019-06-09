//
//  Home.swift
//  MovieApp-SwiftUI
//
//  Created by Reza Ilham on 09/06/19.
//  Copyright © 2019 erzailham. All rights reserved.
//

import SwiftUI

struct Home : View {
    
    var movies: [Movie]
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    NowPlayingView(movies: movies)
                        .frame(height: 200)
                        .listRowInsets(EdgeInsets())
                    MoviesView(categoryName: "Upcoming", movies: movies)
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets())
                    MoviesView(categoryName: "Popular", movies: movies)
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets())
                    }.listStyle(.plain)
            }.navigationBarTitle(Text("Movie App"))
        }
        
    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Home(movies: Movie.fakes)
    }
}
#endif
