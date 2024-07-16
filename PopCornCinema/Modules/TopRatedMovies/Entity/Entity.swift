//
//  Entity.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 15/07/24.
//

import Foundation

struct TopRatedResponse: Codable {
    var page : Int?
    var results : [TopRatedResults]?
    var total_pages : Int?
    var total_results : Int?
}

struct TopRatedResults: Codable {
    var adult : Bool?
    var backdrop_path : String?
    var genre_ids : [Int]?
    var id : Int?
    var original_language : String?
    var original_title : String?
    var overview : String?
    var popularity : Double?
    var poster_path : String?
    var release_date : String?
    var title : String?
    var video : Bool?
    var vote_average : Double?
    var vote_count : Int?

}
