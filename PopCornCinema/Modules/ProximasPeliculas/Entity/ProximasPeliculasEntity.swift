//
//  ProximasPeliculasEntity.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 15/07/24.
//

import Foundation

struct UpcomingResponse : Codable {
    var page : Int?
    var results : [ModeloMovies]?
    var total_pages : Int?
    var total_results : Int?
}
