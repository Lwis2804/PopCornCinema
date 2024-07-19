//
//  Entity.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 28/06/24.
//

import Foundation


struct NowPlayingResponse : Codable {
    var page : Int?
    var results : [ModeloMovies]?
    var total_pages : Int?
    var total_results : Int?
}


