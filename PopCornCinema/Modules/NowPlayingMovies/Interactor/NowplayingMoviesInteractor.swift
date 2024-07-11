//  NowplayingMoviesInteractor.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 28/06/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)
import Foundation

class NowplayingMoviesInteractor: NowplayingMovies_PresenterToInteractorProtocol {
    weak var presenter: NowplayingMovies_InteractorToPresenterProtocol?
    var metodo : String = "http"
    var host : String = ""
    
    func getNowPlayingMoviesToInteractor() {
        let service : NetworkApiProtocol = MoviesWebService(urlConfiguration: MoviesUrlConfigu(metodo: metodo, host: host, path: moviesPath.getNowPlayingMovies.getPath()))
        service.consumeService{ [weak self] (result : Result<NowPlayingResponse, ErrorWebService>) in
            switch result {
            case .success(let succes):
                print(result)
                self?.presenter?.getNowPlayingMoviesFromInteractor(withResponse: succes)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }

    }
}

