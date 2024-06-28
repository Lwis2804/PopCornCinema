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
    

    func getMostPopularMoviesToInteractor() { //como es la integracion de la URL  en este punto
        let service : NetworkApiProtocol = MoviesWebService(urlConfiguration: MoviesUrlConfigu(metodo: metodo, host: host, path: moviesPath.getMostPopularmovies.getPath()))
        // en este consumo de servicio porque cambia cuando llamo a service.consumeService
        // <#T##(Result<Decodable, ErrorWebService>) -> Void#> 
        service.consumeService{ [weak self] (result : Result<MostPopularResponse, ErrorWebService>) in
                                                                                        //que indica el in
            switch result {
            case .success(let succes):
                print(result)
                self?.presenter?.getMostPopularMoviesFromIntrcator(withResponde: succes)
            case .failure(let error):
                print(error.localizedDescription)
            }
            
        }
    }
}

