//  UpcomingMoviesInteractor.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 15/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class UpcomingMoviesInteractor: UpcomingMovies_PresenterToInteractorProtocol {
    
    weak var presenter: UpcomingMovies_InteractorToPresenterProtocol?
    private var metodo : String = "https"
    private var host : String = "api.themoviedb.org"
    
    func getUpcomingMoviesToInteractor() {
        let service : NetworkApiProtocol = MoviesWebService(urlConfiguration: MoviesUrlConfigu(metodo: metodo, host: host, path: moviesPath.getUpcomingMovies.getPath()))
        service.consumeService{ [weak self] (result : Result<UpcomingResponse, ErrorWebService>) in switch result {
        case .success(let success):
            print(result)
            self?.presenter?.getUpcomingMoviesFromInteractor(withResponse: success)
        case .failure(let failure):
            print(failure.localizedDescription)
        }
      }
    }
}

