//
//  MoviesPaths.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 26/06/24.
//

import Foundation


enum moviesPath {
    case getMostPopularmovies
    case getNowPlayingMovies
    case getUpcomingMovies
    case getTopRatedMovies
    
    func getPath() -> String {
        switch self {
        case .getMostPopularmovies:
            return "/3/movie/popular?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a"
        case .getNowPlayingMovies:
            return "/3/movie/now_playing?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a"
        case .getUpcomingMovies:
            return "/3/movie/upcoming?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a"
        case .getTopRatedMovies:
            return "/3/movie/top_rated?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a"
        }
    }
}

