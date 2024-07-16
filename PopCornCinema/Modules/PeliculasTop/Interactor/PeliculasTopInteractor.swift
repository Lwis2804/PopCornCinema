//  PeliculasTopInteractor.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 15/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class PeliculasTopInteractor: PeliculasTop_PresenterToInteractorProtocol {
    
    weak var presenter: PeliculasTop_InteractorToPresenterProtocol?
    private var metodo : String = "https"
    private var host : String = "api.themoviedb.org"
    
    func getPeliculasTopFromInteractor() {
        let service : NetworkApiProtocol = MoviesWebService(urlConfiguration: MoviesUrlConfigu(metodo: metodo, host: host, path: moviesPath.getTopRatedMovies.getPath()))
        service.consumeService{ [weak self] (result : Result<TopRatedResponse, ErrorWebService>) in
            switch result {
            case .success(let success):
                print(success)
                self?.presenter?.getPeloculasTopFromInteractor(withResponse: success)
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
}

