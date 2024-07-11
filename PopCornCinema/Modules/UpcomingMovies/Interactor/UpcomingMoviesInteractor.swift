//  UpcomingMoviesInteractor.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 03/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class UpcomingMoviesInteractor: UpcomingMovies_PresenterToInteractorProtocol {
    
    weak var presenter: UpcomingMovies_InteractorToPresenterProtocol?
    var metodo : String = "https"
    var host : String = "api.themoviedb.org"
    
    func getUpcomingMoviesToInteractor() {
        let service : NetworkApiProtocol = MoviesWebService(urlConfiguration: MoviesUrlConfigu(metodo: metodo, host: host, path: moviesPath.getUpcomingMovies.getPath()))
        service.consumeService{ [weak self] (resul : Result<UpcomingResponse, ErrorWebService>) in
            switch resul {
            case .success(let succes): // porque creo aqui una constante
                self?.presenter?.getUpcomingMoviesFromInteractor(withResponse: succes) // no entiendo porque mi dato es succes
                print(succes)
            case .failure(let error):
                print(error.localizedDescription)
            }
            
        }
        
    }
    
    

}

