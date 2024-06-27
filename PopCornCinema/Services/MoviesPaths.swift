//
//  MoviesPaths.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 26/06/24.
//

import Foundation


enum moviesPath {
    case getMostPopularmovies
    
    func getPath() -> String {
        switch self {
        case .getMostPopularmovies:
            return "/3/movie/popular?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a"
        }
    }
}
