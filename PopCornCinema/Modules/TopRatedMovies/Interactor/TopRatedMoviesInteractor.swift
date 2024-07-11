//  TopRatedMoviesInteractor.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 04/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class TopRatedMoviesInteractor: TopRatedMovies_PresenterToInteractorProtocol {
    
    weak var presenter: TopRatedMovies_InteractorToPresenterProtocol?
    private var metodo : String = "https"
    private var host : String = "api.themoviedb.org"
    
    func getTopRatedMoviesToInteractor() {
        let service : NetworkApiProtocol = MoviesWebService(urlConfiguration: MoviesUrlConfigu(metodo: metodo, host: host, path: moviesPath.getTopRatedMovies.getPath().pathToUse))
        service.consumeService{ [weak self] (result : Result<TopRatedResponse, ErrorWebService>)in
            switch result {
            case .success(let success): // que indica este succes
                return print(success)
                self?.presenter?.getTopRatedMoviesFromInteractor(withResponde: success)
            case .failure(let error):
                return print(error.localizedDescription)
            }
        }
    }
}

