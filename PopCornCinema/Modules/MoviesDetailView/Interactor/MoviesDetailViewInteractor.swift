//  MoviesDetailViewInteractor.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 17/07/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class MoviesDetailViewInteractor: MoviesDetailView_PresenterToInteractorProtocol {
  
    
    weak var presenter: MoviesDetailView_InteractorToPresenterProtocol?
    private var metodo : String = "https"
    private var host : String = "api.themoviedb.org"
    
    func getToNowPlayingInfoToInteractor(withResponse nowResponse: String) {
        let service : NetworkApiProtocol = MoviesWebService(urlConfiguration: MoviesUrlConfigu(metodo: metodo, host: host, path: moviesPath.getNowPlayingMovies.getPath()))
        service.consumeService{ [weak self] (result : Result<NowPlayingResponse,ErrorWebService>) in
            switch result {
            case .success(let success):
                self?.presenter?.getNowPlayingMoviesInfoFromInteractor(withResponse: success)
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
}

