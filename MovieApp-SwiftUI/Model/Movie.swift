//
//  Movie.swift
//  MovieApp-SwiftUI
//
//  Created by Reza Ilham on 09/06/19.
//  Copyright © 2019 erzailham. All rights reserved.
//

import Foundation
import SwiftUI

public struct Movie: Codable, Identifiable  {
    public let id: Int
    public let title, text, year, posterImageName: String
}

extension Movie {
    
    static var fakes: [Movie] {
        return [
            .init(id: 1, title: "Aladin", text: "Aladdin is a lovable street urchin who meets Princess Jasmine, the beautiful daughter of the sultan of Agrabah.", year:"2019", posterImageName: "aladin"),
            .init(id: 2, title: "Avengers: Endgame", text: "Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle", year:"2019", posterImageName: "avengers"),
            .init(id: 3, title: "Spider-Man: Far From Home", text: "Following the events of Avengers: Endgame, Spider-Man must step up to take on new threats in a world that has changed forever.", year:"2019", posterImageName: "spiderman"),
            .init(id: 4, title: "Toy Story 4", text: "Woody, Buzz Lightyear and the rest of the gang embark on a road trip with Bonnie and a new toy named Forky.", year:"2019", posterImageName: "toystory"),
            .init(id: 5, title: "Shazam!", text: "We all have a superhero inside of us -- it just takes a bit of magic to bring it out.", year:"2019", posterImageName: "shazam"),
            .init(id: 6, title: "John Wick: Chapter 3 – Parabellum", text: "After gunning down a member of the High Table -- the shadowy international assassin's guild -- legendary hit man John Wick finds himself stripped of the organization's protective services.", year:"2019", posterImageName: "johnwick"),
        ]
    }
    
    static var fake: Movie {
        fakes[1]
    }
    
}
