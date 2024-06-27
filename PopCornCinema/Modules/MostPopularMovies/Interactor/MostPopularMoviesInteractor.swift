//  MostPopularMoviesInteractor.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 26/06/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MostPopularMoviesInteractor: MostPopularMovies_PresenterToInteractorProtocol {
    
    weak var presenter: MostPopularMovies_InteractorToPresenterProtocol?
    private var metodo : String = "https"
    private var host : String = "api.themoviedb.org"
    

    func getMostPopularMoviesToInteractor() {
  //      let service : NetworkApiProtocol = MoviesWebService(urlConfiguration: MoviesUrlConfigu(metodo: metodo, host: host, path: moviesPath.getMostPopularmovies.getPath()))
    }
}

