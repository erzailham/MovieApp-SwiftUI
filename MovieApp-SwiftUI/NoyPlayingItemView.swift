//
//  NoyPlayingItemView.swift
//  MovieApp-SwiftUI
//
//  Created by Reza Ilham on 09/06/19.
//  Copyright © 2019 erzailham. All rights reserved.
//

import SwiftUI

struct NoyPlayingItemView : View {
    var body: some View {
        VStack {
            Image("sky")
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.orange, lineWidth: 1))
                .shadow(radius: 100)
            VStack {
                Text("Movie Title")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("Year")
                    .font(.subheadline)
            }
        }
    }
}

#if DEBUG
struct NoyPlayingItemView_Previews : PreviewProvider {
    static var previews: some View {
        NoyPlayingItemView()
    }
}
#endif
