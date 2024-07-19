//  NowplayingMoviesPresenter.swift
//  PopCornCinema
//  Created by LUIS GONZALEZ on 28/06/24.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)
import Foundation

class NowplayingMoviesPresenter: NowplayingMovies_ViewToPresenterProtocol {

  
    weak var view: NowplayingMovies_PresenterToViewProtocol?
    var interactor: NowplayingMovies_PresenterToInteractorProtocol?
    var router: NowplayingMovies_PresenterToRouterProtocol?
    
    func getToNowPlayingMovies() {
        interactor?.getNowPlayingMoviesToInteractor()
    }
    
    func didSelect(withMovie movie : ModeloMovies){ //mando llamar al router al seleccionar
        if let view = view {
            router?.goToMoviesDetailView(with: movie , andView: view)
        }
    }
    
    func getToNowPlaying(withResponse movie: String) {
        print(movie)
    }
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension NowplayingMoviesPresenter: NowplayingMovies_InteractorToPresenterProtocol {
    
    func getNowPlayingMoviesFromInteractor(withResponse response: NowPlayingResponse) {
        view?.updateNowPlayingMovies(withResponse: response) //estoy llamando a la funcion para llevar a actualizarla 
    }
}
