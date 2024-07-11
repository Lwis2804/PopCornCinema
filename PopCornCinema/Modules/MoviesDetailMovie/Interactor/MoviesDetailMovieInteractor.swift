//  MoviesDetailMovieInteractor.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 10/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MoviesDetailMovieInteractor: MoviesDetailMovie_PresenterToInteractorProtocol {
    func getMoviesDetailMovieToInteractor() {
        
    }
    

    weak var presenter: MoviesDetailMovie_InteractorToPresenterProtocol?
        private var metodo : String = "https"
        private var host : String = "api.themoviedb.org"
        
 /*       func getMoviesDetailMovieToInteractor() {
            let service : NetworkApiProtocol = MoviesWebService(urlConfiguration: MoviesUrlConfigu(metodo: metodo, host: host, path: moviesPath.getTopRatedMovies.getPath().pathToUse))
            service.consumeService{ [weak self] (result : Result<UpcomingResponse, ErrorWebService>)in
                switch result {
                case .success(let success):
                    return print(success)
                    self?.presenter?.getMoviesDetailMovieFromInteractor(withResponse: success)
                case .failure(let error):
                    return print(error.localizedDescription)
                }
            }
        } */
    }
    


